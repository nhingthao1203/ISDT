namespace QuanLyHocSinh
{
    partial class frmDangNhap
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(frmDangNhap));
            this.gPanelDangNhap = new DevComponents.DotNetBar.Controls.GroupPanel();
            this.lblUsername = new DevComponents.DotNetBar.LabelX();
            this.lblPassError = new System.Windows.Forms.Label();
            this.lblUserError = new System.Windows.Forms.Label();
            this.rImageDangNhap = new DevComponents.DotNetBar.Controls.ReflectionImage();
            this.btnHuyBo = new DevComponents.DotNetBar.ButtonX();
            this.btnDangNhap = new DevComponents.DotNetBar.ButtonX();
            this.lblPassword = new DevComponents.DotNetBar.LabelX();
            this.txtPassword = new DevComponents.DotNetBar.Controls.TextBoxX();
            this.txtUsername = new DevComponents.DotNetBar.Controls.TextBoxX();
            this.panelTop = new System.Windows.Forms.Panel();
            this.lblTitle = new DevComponents.DotNetBar.LabelX();
            this.gPanelDangNhap.SuspendLayout();
            this.panelTop.SuspendLayout();
            this.SuspendLayout();
            // 
            // gPanelDangNhap
            // 
            this.gPanelDangNhap.BackColor = System.Drawing.SystemColors.ActiveCaption;
            this.gPanelDangNhap.CanvasColor = System.Drawing.SystemColors.Control;
            this.gPanelDangNhap.ColorSchemeStyle = DevComponents.DotNetBar.eDotNetBarStyle.Office2007;
            this.gPanelDangNhap.Controls.Add(this.lblUsername);
            this.gPanelDangNhap.Controls.Add(this.lblPassError);
            this.gPanelDangNhap.Controls.Add(this.lblUserError);
            this.gPanelDangNhap.Controls.Add(this.rImageDangNhap);
            this.gPanelDangNhap.Controls.Add(this.btnHuyBo);
            this.gPanelDangNhap.Controls.Add(this.btnDangNhap);
            this.gPanelDangNhap.Controls.Add(this.lblPassword);
            this.gPanelDangNhap.Controls.Add(this.txtPassword);
            this.gPanelDangNhap.Controls.Add(this.txtUsername);
            this.gPanelDangNhap.Dock = System.Windows.Forms.DockStyle.Fill;
            this.gPanelDangNhap.Font = new System.Drawing.Font("Tahoma", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.gPanelDangNhap.IsShadowEnabled = true;
            this.gPanelDangNhap.Location = new System.Drawing.Point(0, 49);
            this.gPanelDangNhap.Margin = new System.Windows.Forms.Padding(4);
            this.gPanelDangNhap.Name = "gPanelDangNhap";
            this.gPanelDangNhap.Size = new System.Drawing.Size(582, 182);
            // 
            // 
            // 
            this.gPanelDangNhap.Style.BackColor2SchemePart = DevComponents.DotNetBar.eColorSchemePart.PanelBackground2;
            this.gPanelDangNhap.Style.BackColorGradientAngle = 90;
            this.gPanelDangNhap.Style.BackColorSchemePart = DevComponents.DotNetBar.eColorSchemePart.PanelBackground;
            this.gPanelDangNhap.Style.BorderBottom = DevComponents.DotNetBar.eStyleBorderType.Solid;
            this.gPanelDangNhap.Style.BorderBottomWidth = 1;
            this.gPanelDangNhap.Style.BorderColorSchemePart = DevComponents.DotNetBar.eColorSchemePart.PanelBorder;
            this.gPanelDangNhap.Style.BorderLeft = DevComponents.DotNetBar.eStyleBorderType.Solid;
            this.gPanelDangNhap.Style.BorderLeftWidth = 1;
            this.gPanelDangNhap.Style.BorderRight = DevComponents.DotNetBar.eStyleBorderType.Solid;
            this.gPanelDangNhap.Style.BorderRightWidth = 1;
            this.gPanelDangNhap.Style.BorderTop = DevComponents.DotNetBar.eStyleBorderType.Solid;
            this.gPanelDangNhap.Style.BorderTopWidth = 1;
            this.gPanelDangNhap.Style.CornerDiameter = 4;
            this.gPanelDangNhap.Style.CornerType = DevComponents.DotNetBar.eCornerType.Rounded;
            this.gPanelDangNhap.Style.TextAlignment = DevComponents.DotNetBar.eStyleTextAlignment.Center;
            this.gPanelDangNhap.Style.TextColorSchemePart = DevComponents.DotNetBar.eColorSchemePart.PanelText;
            this.gPanelDangNhap.Style.TextLineAlignment = DevComponents.DotNetBar.eStyleTextAlignment.Near;
            this.gPanelDangNhap.TabIndex = 0;
            this.gPanelDangNhap.Text = "Login Information";
            this.gPanelDangNhap.Click += new System.EventHandler(this.gPanelDangNhap_Click);
            // 
            // lblUsername
            // 
            this.lblUsername.BackColor = System.Drawing.Color.Transparent;
            this.lblUsername.Font = new System.Drawing.Font("Tahoma", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblUsername.Location = new System.Drawing.Point(81, 18);
            this.lblUsername.Margin = new System.Windows.Forms.Padding(4);
            this.lblUsername.Name = "lblUsername";
            this.lblUsername.Size = new System.Drawing.Size(136, 28);
            this.lblUsername.TabIndex = 0;
            this.lblUsername.Text = "Username:";
            this.lblUsername.TextAlignment = System.Drawing.StringAlignment.Far;
            // 
            // lblPassError
            // 
            this.lblPassError.AutoSize = true;
            this.lblPassError.BackColor = System.Drawing.Color.Transparent;
            this.lblPassError.Font = new System.Drawing.Font("Tahoma", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblPassError.ForeColor = System.Drawing.Color.Red;
            this.lblPassError.Location = new System.Drawing.Point(223, 98);
            this.lblPassError.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.lblPassError.Name = "lblPassError";
            this.lblPassError.Size = new System.Drawing.Size(0, 17);
            this.lblPassError.TabIndex = 5;
            // 
            // lblUserError
            // 
            this.lblUserError.AutoSize = true;
            this.lblUserError.BackColor = System.Drawing.Color.Transparent;
            this.lblUserError.Font = new System.Drawing.Font("Tahoma", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblUserError.ForeColor = System.Drawing.Color.Red;
            this.lblUserError.Location = new System.Drawing.Point(223, 49);
            this.lblUserError.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.lblUserError.Name = "lblUserError";
            this.lblUserError.Size = new System.Drawing.Size(0, 17);
            this.lblUserError.TabIndex = 5;
            // 
            // rImageDangNhap
            // 
            this.rImageDangNhap.BackColor = System.Drawing.Color.Transparent;
            // 
            // 
            // 
            this.rImageDangNhap.BackgroundStyle.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("rImageDangNhap.BackgroundStyle.BackgroundImage")));
            this.rImageDangNhap.BackgroundStyle.TextAlignment = DevComponents.DotNetBar.eStyleTextAlignment.Center;
            this.rImageDangNhap.Location = new System.Drawing.Point(12, 31);
            this.rImageDangNhap.Margin = new System.Windows.Forms.Padding(4);
            this.rImageDangNhap.Name = "rImageDangNhap";
            this.rImageDangNhap.RightToLeft = System.Windows.Forms.RightToLeft.No;
            this.rImageDangNhap.Size = new System.Drawing.Size(117, 112);
            this.rImageDangNhap.TabIndex = 0;
            this.rImageDangNhap.Tag = ".";
            // 
            // btnHuyBo
            // 
            this.btnHuyBo.AccessibleRole = System.Windows.Forms.AccessibleRole.PushButton;
            this.btnHuyBo.BackColor = System.Drawing.Color.Red;
            this.btnHuyBo.ColorTable = DevComponents.DotNetBar.eButtonColor.Blue;
            this.btnHuyBo.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F);
            this.btnHuyBo.Location = new System.Drawing.Point(339, 117);
            this.btnHuyBo.Margin = new System.Windows.Forms.Padding(4);
            this.btnHuyBo.Name = "btnHuyBo";
            this.btnHuyBo.Size = new System.Drawing.Size(100, 28);
            this.btnHuyBo.TabIndex = 4;
            this.btnHuyBo.Text = "Cancel";
            this.btnHuyBo.Click += new System.EventHandler(this.btnHuyBo_Click);
            // 
            // btnDangNhap
            // 
            this.btnDangNhap.AccessibleRole = System.Windows.Forms.AccessibleRole.PushButton;
            this.btnDangNhap.BackColor = System.Drawing.Color.SteelBlue;
            this.btnDangNhap.ColorTable = DevComponents.DotNetBar.eButtonColor.Blue;
            this.btnDangNhap.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F);
            this.btnDangNhap.Location = new System.Drawing.Point(225, 117);
            this.btnDangNhap.Margin = new System.Windows.Forms.Padding(4);
            this.btnDangNhap.Name = "btnDangNhap";
            this.btnDangNhap.Size = new System.Drawing.Size(100, 28);
            this.btnDangNhap.TabIndex = 3;
            this.btnDangNhap.Text = "Log in";
            this.btnDangNhap.Click += new System.EventHandler(this.btnDangNhap_Click);
            // 
            // lblPassword
            // 
            this.lblPassword.BackColor = System.Drawing.Color.Transparent;
            this.lblPassword.Font = new System.Drawing.Font("Tahoma", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblPassword.Location = new System.Drawing.Point(81, 68);
            this.lblPassword.Margin = new System.Windows.Forms.Padding(4);
            this.lblPassword.Name = "lblPassword";
            this.lblPassword.Size = new System.Drawing.Size(136, 28);
            this.lblPassword.TabIndex = 0;
            this.lblPassword.Text = "Password:";
            this.lblPassword.TextAlignment = System.Drawing.StringAlignment.Far;
            // 
            // txtPassword
            // 
            // 
            // 
            // 
            this.txtPassword.Border.Class = "TextBoxBorder";
            this.txtPassword.Location = new System.Drawing.Point(225, 68);
            this.txtPassword.Margin = new System.Windows.Forms.Padding(4);
            this.txtPassword.MaxLength = 30;
            this.txtPassword.Name = "txtPassword";
            this.txtPassword.PasswordChar = '●';
            this.txtPassword.Size = new System.Drawing.Size(250, 27);
            this.txtPassword.TabIndex = 2;
            this.txtPassword.WatermarkText = "Please enter your password";
            this.txtPassword.KeyDown += new System.Windows.Forms.KeyEventHandler(this.txtPassword_KeyDown);
            // 
            // txtUsername
            // 
            this.txtUsername.AutoCompleteSource = System.Windows.Forms.AutoCompleteSource.RecentlyUsedList;
            this.txtUsername.BackColor = System.Drawing.SystemColors.Window;
            // 
            // 
            // 
            this.txtUsername.Border.Class = "TextBoxBorder";
            this.txtUsername.Location = new System.Drawing.Point(225, 18);
            this.txtUsername.Margin = new System.Windows.Forms.Padding(4);
            this.txtUsername.MaxLength = 30;
            this.txtUsername.Name = "txtUsername";
            this.txtUsername.Size = new System.Drawing.Size(250, 27);
            this.txtUsername.TabIndex = 1;
            this.txtUsername.WatermarkText = "Please enter your username";
            // 
            // panelTop
            // 
            this.panelTop.Controls.Add(this.lblTitle);
            this.panelTop.Dock = System.Windows.Forms.DockStyle.Top;
            this.panelTop.Location = new System.Drawing.Point(0, 0);
            this.panelTop.Margin = new System.Windows.Forms.Padding(4);
            this.panelTop.Name = "panelTop";
            this.panelTop.Size = new System.Drawing.Size(582, 49);
            this.panelTop.TabIndex = 1;
            // 
            // lblTitle
            // 
            this.lblTitle.BackColor = System.Drawing.Color.SteelBlue;
            this.lblTitle.Dock = System.Windows.Forms.DockStyle.Fill;
            this.lblTitle.Font = new System.Drawing.Font("Tahoma", 14.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblTitle.ForeColor = System.Drawing.Color.White;
            this.lblTitle.Location = new System.Drawing.Point(0, 0);
            this.lblTitle.Margin = new System.Windows.Forms.Padding(4);
            this.lblTitle.Name = "lblTitle";
            this.lblTitle.Size = new System.Drawing.Size(582, 49);
            this.lblTitle.TabIndex = 0;
            this.lblTitle.Text = "HIGH SCHOOL STUDENT MANAGEMENT";
            this.lblTitle.TextAlignment = System.Drawing.StringAlignment.Center;
            // 
            // frmDangNhap
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(56)))), ((int)(((byte)(95)))), ((int)(((byte)(179)))));
            this.ClientSize = new System.Drawing.Size(582, 231);
            this.Controls.Add(this.gPanelDangNhap);
            this.Controls.Add(this.panelTop);
            this.DoubleBuffered = true;
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedSingle;
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Margin = new System.Windows.Forms.Padding(4);
            this.MaximizeBox = false;
            this.Name = "frmDangNhap";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "LOG IN";
            this.gPanelDangNhap.ResumeLayout(false);
            this.gPanelDangNhap.PerformLayout();
            this.panelTop.ResumeLayout(false);
            this.ResumeLayout(false);

        }

        #endregion

        private DevComponents.DotNetBar.Controls.GroupPanel gPanelDangNhap;
        private DevComponents.DotNetBar.ButtonX btnDangNhap;
        private DevComponents.DotNetBar.LabelX lblUsername;
        private DevComponents.DotNetBar.LabelX lblPassword;
        private DevComponents.DotNetBar.ButtonX btnHuyBo;
        private DevComponents.DotNetBar.Controls.ReflectionImage rImageDangNhap;
        public DevComponents.DotNetBar.Controls.TextBoxX txtUsername;
        public DevComponents.DotNetBar.Controls.TextBoxX txtPassword;
        public System.Windows.Forms.Label lblUserError;
        public System.Windows.Forms.Label lblPassError;
        private System.Windows.Forms.Panel panelTop;
        private DevComponents.DotNetBar.LabelX lblTitle;
    }
}