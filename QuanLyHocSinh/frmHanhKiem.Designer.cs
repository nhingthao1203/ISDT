﻿namespace QuanLyHocSinh
{
    partial class frmHanhKiem
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle2 = new System.Windows.Forms.DataGridViewCellStyle();
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(frmHanhKiem));
            this.groupBoxDanhSach = new System.Windows.Forms.GroupBox();
            this.ctxMenu = new DevComponents.DotNetBar.ContextMenuBar();
            this.btnMenu = new DevComponents.DotNetBar.ButtonItem();
            this.btnAdd = new DevComponents.DotNetBar.ButtonItem();
            this.btnDelete = new DevComponents.DotNetBar.ButtonItem();
            this.btnSave = new DevComponents.DotNetBar.ButtonItem();
            this.btnClose = new DevComponents.DotNetBar.ButtonItem();
            this.dgvHanhKiem = new DevComponents.DotNetBar.Controls.DataGridViewX();
            this.bindingNavigatorHanhKiem = new System.Windows.Forms.BindingNavigator(this.components);
            this.bindingNavigatorCountItem = new System.Windows.Forms.ToolStripLabel();
            this.bindingNavigatorMoveFirstItem = new System.Windows.Forms.ToolStripButton();
            this.bindingNavigatorMovePreviousItem = new System.Windows.Forms.ToolStripButton();
            this.bindingNavigatorSeparator = new System.Windows.Forms.ToolStripSeparator();
            this.bindingNavigatorPositionItem = new System.Windows.Forms.ToolStripTextBox();
            this.bindingNavigatorSeparator1 = new System.Windows.Forms.ToolStripSeparator();
            this.bindingNavigatorMoveNextItem = new System.Windows.Forms.ToolStripButton();
            this.bindingNavigatorMoveLastItem = new System.Windows.Forms.ToolStripButton();
            this.bindingNavigatorSeparator2 = new System.Windows.Forms.ToolStripSeparator();
            this.bindingNavigatorAddNewItem = new System.Windows.Forms.ToolStripButton();
            this.bindingNavigatorDeleteItem = new System.Windows.Forms.ToolStripButton();
            this.bindingNavigatorSaveItem = new System.Windows.Forms.ToolStripButton();
            this.bindingNavigatorExitItem = new System.Windows.Forms.ToolStripButton();
            this.colMaHanhKiem = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.colTenHanhKiem = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.groupBoxDanhSach.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.ctxMenu)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dgvHanhKiem)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.bindingNavigatorHanhKiem)).BeginInit();
            this.bindingNavigatorHanhKiem.SuspendLayout();
            this.SuspendLayout();
            // 
            // groupBoxDanhSach
            // 
            this.groupBoxDanhSach.Controls.Add(this.ctxMenu);
            this.groupBoxDanhSach.Controls.Add(this.dgvHanhKiem);
            this.groupBoxDanhSach.Controls.Add(this.bindingNavigatorHanhKiem);
            this.groupBoxDanhSach.Dock = System.Windows.Forms.DockStyle.Fill;
            this.groupBoxDanhSach.Location = new System.Drawing.Point(0, 0);
            this.groupBoxDanhSach.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.groupBoxDanhSach.Name = "groupBoxDanhSach";
            this.groupBoxDanhSach.Padding = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.groupBoxDanhSach.Size = new System.Drawing.Size(479, 391);
            this.groupBoxDanhSach.TabIndex = 1;
            this.groupBoxDanhSach.TabStop = false;
            this.groupBoxDanhSach.Text = "List of conduct";
            // 
            // ctxMenu
            // 
            this.ctxMenu.DockSide = DevComponents.DotNetBar.eDockSide.Document;
            this.ctxMenu.Items.AddRange(new DevComponents.DotNetBar.BaseItem[] {
            this.btnMenu});
            this.ctxMenu.Location = new System.Drawing.Point(175, 201);
            this.ctxMenu.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.ctxMenu.Name = "ctxMenu";
            this.ctxMenu.Size = new System.Drawing.Size(100, 29);
            this.ctxMenu.Stretch = true;
            this.ctxMenu.Style = DevComponents.DotNetBar.eDotNetBarStyle.Office2007;
            this.ctxMenu.TabIndex = 4;
            this.ctxMenu.TabStop = false;
            this.ctxMenu.Text = "ctxMenu";
            // 
            // btnMenu
            // 
            this.btnMenu.AutoExpandOnClick = true;
            this.btnMenu.ImagePaddingHorizontal = 8;
            this.btnMenu.Name = "btnMenu";
            this.btnMenu.Shape = new DevComponents.DotNetBar.RoundRectangleShapeDescriptor(2);
            this.btnMenu.SubItems.AddRange(new DevComponents.DotNetBar.BaseItem[] {
            this.btnAdd,
            this.btnDelete,
            this.btnSave,
            this.btnClose});
            this.btnMenu.Text = "Menu";
            // 
            // btnAdd
            // 
            this.btnAdd.Enabled = false;
            this.btnAdd.Image = global::QuanLyHocSinh.Properties.Resources.them;
            this.btnAdd.ImagePaddingHorizontal = 8;
            this.btnAdd.Name = "btnAdd";
            this.btnAdd.Shortcuts.Add(DevComponents.DotNetBar.eShortcut.Ins);
            this.btnAdd.Text = "Add new";
            this.btnAdd.Click += new System.EventHandler(this.bindingNavigatorAddNewItem_Click);
            // 
            // btnDelete
            // 
            this.btnDelete.Enabled = false;
            this.btnDelete.Image = global::QuanLyHocSinh.Properties.Resources.xoa;
            this.btnDelete.ImagePaddingHorizontal = 8;
            this.btnDelete.Name = "btnDelete";
            this.btnDelete.Shortcuts.Add(DevComponents.DotNetBar.eShortcut.Del);
            this.btnDelete.Text = "Delete selected row";
            this.btnDelete.Click += new System.EventHandler(this.bindingNavigatorDeleteItem_Click);
            // 
            // btnSave
            // 
            this.btnSave.Image = global::QuanLyHocSinh.Properties.Resources.luu;
            this.btnSave.ImagePaddingHorizontal = 8;
            this.btnSave.Name = "btnSave";
            this.btnSave.Shortcuts.Add(DevComponents.DotNetBar.eShortcut.CtrlS);
            this.btnSave.Text = "Save list";
            this.btnSave.Click += new System.EventHandler(this.bindingNavigatorSaveItem_Click);
            // 
            // btnClose
            // 
            this.btnClose.Image = global::QuanLyHocSinh.Properties.Resources.thoat;
            this.btnClose.ImagePaddingHorizontal = 8;
            this.btnClose.Name = "btnClose";
            this.btnClose.Shortcuts.Add(DevComponents.DotNetBar.eShortcut.AltF4);
            this.btnClose.Text = "Close this window";
            this.btnClose.Click += new System.EventHandler(this.bindingNavigatorExitItem_Click);
            // 
            // dgvHanhKiem
            // 
            this.dgvHanhKiem.AllowUserToAddRows = false;
            this.dgvHanhKiem.AllowUserToResizeColumns = false;
            this.dgvHanhKiem.AllowUserToResizeRows = false;
            this.dgvHanhKiem.BackgroundColor = System.Drawing.Color.FromArgb(((int)(((byte)(238)))), ((int)(((byte)(243)))), ((int)(((byte)(250)))));
            this.dgvHanhKiem.ColumnHeadersHeight = 29;
            this.dgvHanhKiem.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.DisableResizing;
            this.dgvHanhKiem.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.colMaHanhKiem,
            this.colTenHanhKiem});
            this.ctxMenu.SetContextMenuEx(this.dgvHanhKiem, this.btnMenu);
            dataGridViewCellStyle2.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle2.BackColor = System.Drawing.SystemColors.Window;
            dataGridViewCellStyle2.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            dataGridViewCellStyle2.ForeColor = System.Drawing.SystemColors.ControlText;
            dataGridViewCellStyle2.SelectionBackColor = System.Drawing.SystemColors.Highlight;
            dataGridViewCellStyle2.SelectionForeColor = System.Drawing.SystemColors.ControlText;
            dataGridViewCellStyle2.WrapMode = System.Windows.Forms.DataGridViewTriState.False;
            this.dgvHanhKiem.DefaultCellStyle = dataGridViewCellStyle2;
            this.dgvHanhKiem.Dock = System.Windows.Forms.DockStyle.Fill;
            this.dgvHanhKiem.GridColor = System.Drawing.Color.FromArgb(((int)(((byte)(208)))), ((int)(((byte)(215)))), ((int)(((byte)(229)))));
            this.dgvHanhKiem.Location = new System.Drawing.Point(4, 62);
            this.dgvHanhKiem.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.dgvHanhKiem.Name = "dgvHanhKiem";
            this.dgvHanhKiem.RowHeadersWidth = 51;
            this.dgvHanhKiem.ScrollBars = System.Windows.Forms.ScrollBars.Vertical;
            this.dgvHanhKiem.Size = new System.Drawing.Size(471, 325);
            this.dgvHanhKiem.TabIndex = 3;
            // 
            // bindingNavigatorHanhKiem
            // 
            this.bindingNavigatorHanhKiem.AddNewItem = null;
            this.bindingNavigatorHanhKiem.AutoSize = false;
            this.bindingNavigatorHanhKiem.CountItem = this.bindingNavigatorCountItem;
            this.bindingNavigatorHanhKiem.DeleteItem = null;
            this.bindingNavigatorHanhKiem.ImageScalingSize = new System.Drawing.Size(20, 20);
            this.bindingNavigatorHanhKiem.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.bindingNavigatorMoveFirstItem,
            this.bindingNavigatorMovePreviousItem,
            this.bindingNavigatorSeparator,
            this.bindingNavigatorPositionItem,
            this.bindingNavigatorCountItem,
            this.bindingNavigatorSeparator1,
            this.bindingNavigatorMoveNextItem,
            this.bindingNavigatorMoveLastItem,
            this.bindingNavigatorSeparator2,
            this.bindingNavigatorAddNewItem,
            this.bindingNavigatorDeleteItem,
            this.bindingNavigatorSaveItem,
            this.bindingNavigatorExitItem});
            this.bindingNavigatorHanhKiem.Location = new System.Drawing.Point(4, 19);
            this.bindingNavigatorHanhKiem.MoveFirstItem = this.bindingNavigatorMoveFirstItem;
            this.bindingNavigatorHanhKiem.MoveLastItem = this.bindingNavigatorMoveLastItem;
            this.bindingNavigatorHanhKiem.MoveNextItem = this.bindingNavigatorMoveNextItem;
            this.bindingNavigatorHanhKiem.MovePreviousItem = this.bindingNavigatorMovePreviousItem;
            this.bindingNavigatorHanhKiem.Name = "bindingNavigatorHanhKiem";
            this.bindingNavigatorHanhKiem.PositionItem = this.bindingNavigatorPositionItem;
            this.bindingNavigatorHanhKiem.Size = new System.Drawing.Size(471, 43);
            this.bindingNavigatorHanhKiem.TabIndex = 2;
            // 
            // bindingNavigatorCountItem
            // 
            this.bindingNavigatorCountItem.Name = "bindingNavigatorCountItem";
            this.bindingNavigatorCountItem.RightToLeftAutoMirrorImage = true;
            this.bindingNavigatorCountItem.Size = new System.Drawing.Size(45, 40);
            this.bindingNavigatorCountItem.Text = "of {0}";
            this.bindingNavigatorCountItem.ToolTipText = "Total number of rows in the list";
            // 
            // bindingNavigatorMoveFirstItem
            // 
            this.bindingNavigatorMoveFirstItem.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image;
            this.bindingNavigatorMoveFirstItem.Image = global::QuanLyHocSinh.Properties.Resources.dong_dau;
            this.bindingNavigatorMoveFirstItem.Name = "bindingNavigatorMoveFirstItem";
            this.bindingNavigatorMoveFirstItem.RightToLeftAutoMirrorImage = true;
            this.bindingNavigatorMoveFirstItem.Size = new System.Drawing.Size(29, 40);
            this.bindingNavigatorMoveFirstItem.Text = "Go to top of list";
            // 
            // bindingNavigatorMovePreviousItem
            // 
            this.bindingNavigatorMovePreviousItem.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image;
            this.bindingNavigatorMovePreviousItem.Image = ((System.Drawing.Image)(resources.GetObject("bindingNavigatorMovePreviousItem.Image")));
            this.bindingNavigatorMovePreviousItem.Name = "bindingNavigatorMovePreviousItem";
            this.bindingNavigatorMovePreviousItem.RightToLeft = System.Windows.Forms.RightToLeft.No;
            this.bindingNavigatorMovePreviousItem.RightToLeftAutoMirrorImage = true;
            this.bindingNavigatorMovePreviousItem.Size = new System.Drawing.Size(29, 40);
            this.bindingNavigatorMovePreviousItem.Text = "Go back to previous line";
            // 
            // bindingNavigatorSeparator
            // 
            this.bindingNavigatorSeparator.Name = "bindingNavigatorSeparator";
            this.bindingNavigatorSeparator.Size = new System.Drawing.Size(6, 43);
            // 
            // bindingNavigatorPositionItem
            // 
            this.bindingNavigatorPositionItem.AccessibleName = "";
            this.bindingNavigatorPositionItem.AutoSize = false;
            this.bindingNavigatorPositionItem.Font = new System.Drawing.Font("Segoe UI", 9F);
            this.bindingNavigatorPositionItem.Name = "bindingNavigatorPositionItem";
            this.bindingNavigatorPositionItem.Size = new System.Drawing.Size(65, 27);
            this.bindingNavigatorPositionItem.Text = "0";
            this.bindingNavigatorPositionItem.ToolTipText = "Current location";
            // 
            // bindingNavigatorSeparator1
            // 
            this.bindingNavigatorSeparator1.Name = "bindingNavigatorSeparator1";
            this.bindingNavigatorSeparator1.Size = new System.Drawing.Size(6, 43);
            // 
            // bindingNavigatorMoveNextItem
            // 
            this.bindingNavigatorMoveNextItem.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image;
            this.bindingNavigatorMoveNextItem.Image = ((System.Drawing.Image)(resources.GetObject("bindingNavigatorMoveNextItem.Image")));
            this.bindingNavigatorMoveNextItem.Name = "bindingNavigatorMoveNextItem";
            this.bindingNavigatorMoveNextItem.RightToLeft = System.Windows.Forms.RightToLeft.Yes;
            this.bindingNavigatorMoveNextItem.RightToLeftAutoMirrorImage = true;
            this.bindingNavigatorMoveNextItem.Size = new System.Drawing.Size(29, 40);
            this.bindingNavigatorMoveNextItem.Text = "Go to next line";
            // 
            // bindingNavigatorMoveLastItem
            // 
            this.bindingNavigatorMoveLastItem.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image;
            this.bindingNavigatorMoveLastItem.Image = global::QuanLyHocSinh.Properties.Resources.dong_dau;
            this.bindingNavigatorMoveLastItem.Name = "bindingNavigatorMoveLastItem";
            this.bindingNavigatorMoveLastItem.RightToLeft = System.Windows.Forms.RightToLeft.Yes;
            this.bindingNavigatorMoveLastItem.RightToLeftAutoMirrorImage = true;
            this.bindingNavigatorMoveLastItem.Size = new System.Drawing.Size(29, 40);
            this.bindingNavigatorMoveLastItem.Text = "Go to end of list";
            // 
            // bindingNavigatorSeparator2
            // 
            this.bindingNavigatorSeparator2.Name = "bindingNavigatorSeparator2";
            this.bindingNavigatorSeparator2.Size = new System.Drawing.Size(6, 43);
            // 
            // bindingNavigatorAddNewItem
            // 
            this.bindingNavigatorAddNewItem.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image;
            this.bindingNavigatorAddNewItem.Enabled = false;
            this.bindingNavigatorAddNewItem.Image = global::QuanLyHocSinh.Properties.Resources.them;
            this.bindingNavigatorAddNewItem.Name = "bindingNavigatorAddNewItem";
            this.bindingNavigatorAddNewItem.RightToLeftAutoMirrorImage = true;
            this.bindingNavigatorAddNewItem.Size = new System.Drawing.Size(29, 40);
            this.bindingNavigatorAddNewItem.Text = "Add";
            this.bindingNavigatorAddNewItem.Click += new System.EventHandler(this.bindingNavigatorAddNewItem_Click);
            // 
            // bindingNavigatorDeleteItem
            // 
            this.bindingNavigatorDeleteItem.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image;
            this.bindingNavigatorDeleteItem.Enabled = false;
            this.bindingNavigatorDeleteItem.Image = global::QuanLyHocSinh.Properties.Resources.xoa;
            this.bindingNavigatorDeleteItem.Name = "bindingNavigatorDeleteItem";
            this.bindingNavigatorDeleteItem.RightToLeftAutoMirrorImage = true;
            this.bindingNavigatorDeleteItem.Size = new System.Drawing.Size(29, 40);
            this.bindingNavigatorDeleteItem.Text = "Remove";
            this.bindingNavigatorDeleteItem.Click += new System.EventHandler(this.bindingNavigatorDeleteItem_Click);
            // 
            // bindingNavigatorSaveItem
            // 
            this.bindingNavigatorSaveItem.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image;
            this.bindingNavigatorSaveItem.Image = global::QuanLyHocSinh.Properties.Resources.luu;
            this.bindingNavigatorSaveItem.Name = "bindingNavigatorSaveItem";
            this.bindingNavigatorSaveItem.RightToLeftAutoMirrorImage = true;
            this.bindingNavigatorSaveItem.Size = new System.Drawing.Size(29, 40);
            this.bindingNavigatorSaveItem.Text = "Save";
            this.bindingNavigatorSaveItem.Click += new System.EventHandler(this.bindingNavigatorSaveItem_Click);
            // 
            // bindingNavigatorExitItem
            // 
            this.bindingNavigatorExitItem.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image;
            this.bindingNavigatorExitItem.Image = global::QuanLyHocSinh.Properties.Resources.thoat;
            this.bindingNavigatorExitItem.Name = "bindingNavigatorExitItem";
            this.bindingNavigatorExitItem.RightToLeftAutoMirrorImage = true;
            this.bindingNavigatorExitItem.Size = new System.Drawing.Size(29, 40);
            this.bindingNavigatorExitItem.Text = "Exit";
            this.bindingNavigatorExitItem.Click += new System.EventHandler(this.bindingNavigatorExitItem_Click);
            // 
            // colMaHanhKiem
            // 
            this.colMaHanhKiem.DataPropertyName = "MaHanhKiem";
            this.colMaHanhKiem.HeaderText = "Conduct ID";
            this.colMaHanhKiem.MaxInputLength = 6;
            this.colMaHanhKiem.MinimumWidth = 6;
            this.colMaHanhKiem.Name = "colMaHanhKiem";
            this.colMaHanhKiem.ReadOnly = true;
            this.colMaHanhKiem.Resizable = System.Windows.Forms.DataGridViewTriState.False;
            this.colMaHanhKiem.Width = 125;
            // 
            // colTenHanhKiem
            // 
            this.colTenHanhKiem.DataPropertyName = "TenHanhKiem";
            this.colTenHanhKiem.HeaderText = "Conduct Name";
            this.colTenHanhKiem.MaxInputLength = 30;
            this.colTenHanhKiem.MinimumWidth = 6;
            this.colTenHanhKiem.Name = "colTenHanhKiem";
            this.colTenHanhKiem.Resizable = System.Windows.Forms.DataGridViewTriState.False;
            this.colTenHanhKiem.Width = 210;
            // 
            // frmHanhKiem
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(479, 391);
            this.ctxMenu.SetContextMenuEx(this, this.btnMenu);
            this.Controls.Add(this.groupBoxDanhSach);
            this.DoubleBuffered = true;
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedSingle;
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.Name = "frmHanhKiem";
            this.ShowInTaskbar = false;
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "CONDUCT";
            this.WindowState = System.Windows.Forms.FormWindowState.Maximized;
            this.Load += new System.EventHandler(this.frmHanhKiem_Load);
            this.groupBoxDanhSach.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.ctxMenu)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dgvHanhKiem)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.bindingNavigatorHanhKiem)).EndInit();
            this.bindingNavigatorHanhKiem.ResumeLayout(false);
            this.bindingNavigatorHanhKiem.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        #region Components
        private System.Windows.Forms.GroupBox groupBoxDanhSach;
        private DevComponents.DotNetBar.Controls.DataGridViewX dgvHanhKiem;
        private System.Windows.Forms.ToolStripButton bindingNavigatorAddNewItem;
        private DevComponents.DotNetBar.ContextMenuBar ctxMenu;
        private DevComponents.DotNetBar.ButtonItem btnMenu;
        private DevComponents.DotNetBar.ButtonItem btnAdd;
        private DevComponents.DotNetBar.ButtonItem btnDelete;
        private DevComponents.DotNetBar.ButtonItem btnSave;
        private DevComponents.DotNetBar.ButtonItem btnClose;
        private System.Windows.Forms.BindingNavigator bindingNavigatorHanhKiem;
        private System.Windows.Forms.ToolStripLabel bindingNavigatorCountItem;
        private System.Windows.Forms.ToolStripButton bindingNavigatorDeleteItem;
        private System.Windows.Forms.ToolStripButton bindingNavigatorMoveFirstItem;
        private System.Windows.Forms.ToolStripButton bindingNavigatorMovePreviousItem;
        private System.Windows.Forms.ToolStripSeparator bindingNavigatorSeparator;
        private System.Windows.Forms.ToolStripTextBox bindingNavigatorPositionItem;
        private System.Windows.Forms.ToolStripSeparator bindingNavigatorSeparator1;
        private System.Windows.Forms.ToolStripButton bindingNavigatorMoveNextItem;
        private System.Windows.Forms.ToolStripButton bindingNavigatorMoveLastItem;
        private System.Windows.Forms.ToolStripSeparator bindingNavigatorSeparator2;
        private System.Windows.Forms.ToolStripButton bindingNavigatorSaveItem;
        private System.Windows.Forms.ToolStripButton bindingNavigatorExitItem;
        #endregion

        private System.Windows.Forms.DataGridViewTextBoxColumn colMaHanhKiem;
        private System.Windows.Forms.DataGridViewTextBoxColumn colTenHanhKiem;
    }
}