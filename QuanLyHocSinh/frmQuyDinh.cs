using BUS;
using DevComponents.DotNetBar;
using System;
using System.Windows.Forms;

namespace QuanLyHocSinh
{
    public partial class frmQuyDinh : Office2007Form
    {
        public frmQuyDinh()
        {
            InitializeComponent();
        }

        private void HienThi()
        {
            QuyDinhBUS.Instance.HienThi(
                txtTuoiCanDuoi,
                txtTuoiCanTren,
                txtSiSoCanDuoi,
                txtSiSoCanTren,
                txtDiemDat
            );
        }


        private void frmQuyDinh_Load(object sender, EventArgs e)
        {
            HienThi();
        }

        private void btnDongY_Click(object sender, EventArgs e)
        {
            if (tabControlPanelDoTuoi.CanSelect)
            {
                if (txtTuoiCanDuoi.Value > txtTuoiCanTren.Value)
                    MessageBox.Show(
                  "The lower bound age must be less than the upper bound age!",
                        "ERROR", 
                        MessageBoxButtons.OK, 
                        MessageBoxIcon.Error
                    );
                else
                {
                    QuyDinhBUS.Instance.CapNhatQuyDinhDoTuoi(txtTuoiCanDuoi.Value, txtTuoiCanTren.Value);
                    MessageBox.Show(
                        "Successfully updated age regulations!", "COMPLETED", 
                        MessageBoxButtons.OK, 
                        MessageBoxIcon.Information
                    );
                    HienThi();
                }
            }
            else if (tabControlPanelSiSo.CanSelect)
            {
                if (txtSiSoCanDuoi.Value > txtSiSoCanTren.Value)
                    MessageBox.Show(
                      "The lower bound must be less than the upper bound!",
                        "ERROR",
                        MessageBoxButtons.OK,
                        MessageBoxIcon.Error
                    );
                else
                {
                    QuyDinhBUS.Instance.CapNhatQuyDinhSiSo(txtSiSoCanDuoi.Value, txtSiSoCanTren.Value);
                    MessageBox.Show(
                      "Successfully updated the attendance regulations!",
                        "COMPLETED",
                        MessageBoxButtons.OK,
                        MessageBoxIcon.Information
                    );
                    HienThi();
                }
            }
            else if (tabControlPanelDiemDat.CanSelect)
            {
                QuyDinhBUS.Instance.CapNhatQuyDinhDiemDat(txtDiemDat.Value);
                MessageBox.Show(
                   "Successfully updated the passing score regulations!",
                    "COMPLETED", 
                    MessageBoxButtons.OK, 
                    MessageBoxIcon.Information
                );
                HienThi();
            }
        }

        private void btnHuyBo_Click(object sender, EventArgs e)
        {
            Close();
        }
    }
}
