using BUS;
using DevComponents.DotNetBar;
using System;
using System.Data;
using System.Windows.Forms;

namespace QuanLyHocSinh
{
    public partial class frmNamHoc : Office2007Form
    {
        public frmNamHoc()
        {
            InitializeComponent();
        }

        private void frmNamHoc_Load(object sender, EventArgs e)
        {
            NamHocBUS.Instance.HienThi(dgvNamHoc, bindingNavigatorNamHoc);
        }

        private void bindingNavigatorAddNewItem_Click(object sender, EventArgs e)
        {
            if (dgvNamHoc.RowCount == 0) bindingNavigatorDeleteItem.Enabled = true;

            BindingSource bindingSource = bindingNavigatorNamHoc.BindingSource;
            DataTable dataTable = (DataTable)bindingSource.DataSource;
            DataRow dataRow = dataTable.NewRow();

            dataRow["MaNamHoc"] = "";
            dataRow["TenNamHoc"] = "";

            dataTable.Rows.Add(dataRow);
            bindingSource.MoveLast();
        }

        private void bindingNavigatorDeleteItem_Click(object sender, EventArgs e)
        {
            if (dgvNamHoc.RowCount == 0) bindingNavigatorDeleteItem.Enabled = false;
            else if (
                MessageBox.Show(
          "Are you sure you want to delete this line?",
"Delete class",
                    MessageBoxButtons.OKCancel,
                    MessageBoxIcon.Question
                ) == DialogResult.OK
            ) bindingNavigatorNamHoc.BindingSource.RemoveCurrent();
        }

        private void bindingNavigatorSaveItem_Click(object sender, EventArgs e)
        {
            string[] colNames = { "colMaNamHoc", "colTenNamHoc" };
            if (KiemTraTruocKhiLuu.KiemTraDataGridView(dgvNamHoc, colNames))
            {
                bindingNavigatorPositionItem.Focus();
                BindingSource bindingSource = bindingNavigatorNamHoc.BindingSource;
                NamHocBUS.Instance.CapNhatNamHoc((DataTable)bindingSource.DataSource);

                MessageBox.Show(
               "Data saved to database",
"Updated successfully",
                    MessageBoxButtons.OK,
                    MessageBoxIcon.Information
                );
            }
        }

        private void bindingNavigatorExitItem_Click(object sender, EventArgs e)
        {
            Close();
        }
    }
}
