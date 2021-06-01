

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.Vector;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JOptionPane;
import javax.swing.table.DefaultTableModel;

public class Channel extends javax.swing.JFrame {

    /**
     * Creates new form Channel
     */
    public Channel() {
        initComponents();
        Connect();
         AutoID();
         LoadDoctor();
         LoadPatient();
         Channel_table();
    }
    
    
    Connection con;
    PreparedStatement pst;
    ResultSet rs;
    String chno;
    
    public class Doctor
    {
        String id;
        String name;
        
        public Doctor(String id, String name)
        {
            this.id = id;
            this.name = name;
        }
        public String toString()
        {
            
            return name;
            
        }
    }
    
    public class Patient
    {
        String id;
        String name;
        
        public Patient(String id, String name)
        {
            this.id = id;
            this.name = name;
        }
        public String toString()
        {
            
            return name;
            
        }
    }
    
      public void LoadPatient()
    {
        try {
            pst = con.prepareStatement("select * from patient");
            rs = pst.executeQuery();
            txtpatient.removeAll();
            
            
            while(rs.next())
            {
                txtpatient.addItem(new Patient(rs.getString(1),rs.getString(2)));
                
                
                
            }
                
        } catch (SQLException ex) {
            Logger.getLogger(Channel.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }
    
    public void LoadDoctor()
    {
        try {
            pst = con.prepareStatement("select * from doctor");
            rs = pst.executeQuery();
            txtdoctor.removeAll();
            
            
            while(rs.next())
            {
                txtdoctor.addItem(new Doctor(rs.getString(1),rs.getString(2)));
                
                
                
            }
                
        } catch (SQLException ex) {
            Logger.getLogger(Channel.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }
            
    
    
    
    
    public void Connect()
     {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost/hospital", "root","");
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(User.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(User.class.getName()).log(Level.SEVERE, null, ex);
        }
     }
    
      public void AutoID()
     {
        try {
            Statement s = con.createStatement();
            rs = s.executeQuery("Select MAX(channelno) from channel");
            rs.next();
            rs.getString("MAX(channelno)");
            
            if(rs.getString("MAX(channelno)")== null){
             
                    lblchno.setText("CH001");
                
            }
            else
            {
            long iD =Long.parseLong(rs.getString("MAX(channelno)").substring(2,rs.getString("MAX(channelno)").length()));
            ++iD;
             lblchno.setText("CH"+String.format("%03d", iD));
          
            }
            
            
        } catch (SQLException ex) {
            Logger.getLogger(Patient.class.getName()).log(Level.SEVERE, null, ex);
        }
     
     }
       public void Channel_table()
     {
        try {
            pst=con.prepareStatement("select * from channel");
             rs= pst.executeQuery();
      
      
      ResultSetMetaData Rsm =rs.getMetaData();
          int c;
          c =Rsm.getColumnCount();
          DefaultTableModel df = (DefaultTableModel)jTable1.getModel();
          
          df.setRowCount(0);
        
        
          while(rs.next()){
          
          Vector v2 = new Vector();
          
          for(int i=1; i<=c;i++){
           v2.add(rs.getString("channelno"));
           v2.add(rs.getString("doctorname"));
           v2.add(rs.getString("patientname"));
           v2.add(rs.getString("roomno"));
           v2.add(rs.getString("date"));
           v2.add(rs.getString("time"));
              
          }
           df.addRow(v2);
          }
          
          
          
          
        } catch (SQLException ex) {
            Logger.getLogger(Patient.class.getName()).log(Level.SEVERE, null, ex);
        }
     
     }
     

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jPanel1 = new javax.swing.JPanel();
        jPanel2 = new javax.swing.JPanel();
        jLabel1 = new javax.swing.JLabel();
        jLabel2 = new javax.swing.JLabel();
        jLabel3 = new javax.swing.JLabel();
        jLabel4 = new javax.swing.JLabel();
        jLabel5 = new javax.swing.JLabel();
        lblchno = new javax.swing.JLabel();
        txtdoctor = new javax.swing.JComboBox();
        txtpatient = new javax.swing.JComboBox();
        txtroom = new javax.swing.JSpinner();
        jButton1 = new javax.swing.JButton();
        jButton2 = new javax.swing.JButton();
        jButton3 = new javax.swing.JButton();
        txttime = new com.github.lgooddatepicker.components.TimePicker();
        jLabel7 = new javax.swing.JLabel();
        jScrollPane1 = new javax.swing.JScrollPane();
        jTable1 = new javax.swing.JTable();
        jLabel6 = new javax.swing.JLabel();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setTitle("Appointment Registration");
        setBackground(new java.awt.Color(255, 51, 51));

        jPanel1.setBackground(new java.awt.Color(153, 102, 255));

        jPanel2.setBackground(new java.awt.Color(0, 153, 153));
        jPanel2.setBorder(javax.swing.BorderFactory.createTitledBorder(null, "Appointment Registration", javax.swing.border.TitledBorder.DEFAULT_JUSTIFICATION, javax.swing.border.TitledBorder.DEFAULT_POSITION, new java.awt.Font("sansserif", 1, 24))); // NOI18N
        jPanel2.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        jLabel1.setText("Channel No.");
        jLabel1.setFont(new java.awt.Font("Times New Roman", 1, 18)); // NOI18N
        jPanel2.add(jLabel1, new org.netbeans.lib.awtextra.AbsoluteConstraints(16, 78, -1, -1));

        jLabel2.setText("Doctor Name");
        jLabel2.setFont(new java.awt.Font("Times New Roman", 1, 18)); // NOI18N
        jPanel2.add(jLabel2, new org.netbeans.lib.awtextra.AbsoluteConstraints(16, 128, -1, -1));

        jLabel3.setText("Patient Name");
        jLabel3.setFont(new java.awt.Font("Times New Roman", 1, 18)); // NOI18N
        jPanel2.add(jLabel3, new org.netbeans.lib.awtextra.AbsoluteConstraints(16, 173, -1, -1));

        jLabel4.setText("Room No.");
        jLabel4.setFont(new java.awt.Font("Times New Roman", 1, 18)); // NOI18N
        jPanel2.add(jLabel4, new org.netbeans.lib.awtextra.AbsoluteConstraints(16, 218, -1, -1));

        jLabel5.setText("Time");
        jLabel5.setFont(new java.awt.Font("Times New Roman", 1, 18)); // NOI18N
        jPanel2.add(jLabel5, new org.netbeans.lib.awtextra.AbsoluteConstraints(20, 310, -1, -1));

        lblchno.setFont(new java.awt.Font("Times New Roman", 1, 18)); // NOI18N
        jPanel2.add(lblchno, new org.netbeans.lib.awtextra.AbsoluteConstraints(224, 78, -1, -1));

        jPanel2.add(txtdoctor, new org.netbeans.lib.awtextra.AbsoluteConstraints(214, 131, 139, -1));

        jPanel2.add(txtpatient, new org.netbeans.lib.awtextra.AbsoluteConstraints(214, 176, 139, -1));
        jPanel2.add(txtroom, new org.netbeans.lib.awtextra.AbsoluteConstraints(214, 221, 83, -1));

        jButton1.setText("Create");
        jButton1.setFont(new java.awt.Font("sansserif", 1, 14)); // NOI18N
        jButton1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton1ActionPerformed(evt);
            }
        });
        jPanel2.add(jButton1, new org.netbeans.lib.awtextra.AbsoluteConstraints(29, 384, 117, 48));

        jButton2.setText("Delete");
        jButton2.setFont(new java.awt.Font("sansserif", 1, 14)); // NOI18N
        jButton2.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton2ActionPerformed(evt);
            }
        });
        jPanel2.add(jButton2, new org.netbeans.lib.awtextra.AbsoluteConstraints(183, 384, 115, 49));

        jButton3.setText("Exit");
        jButton3.setFont(new java.awt.Font("sansserif", 1, 14)); // NOI18N
        jButton3.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton3ActionPerformed(evt);
            }
        });
        jPanel2.add(jButton3, new org.netbeans.lib.awtextra.AbsoluteConstraints(329, 384, 115, 49));
        jPanel2.add(txttime, new org.netbeans.lib.awtextra.AbsoluteConstraints(210, 310, 154, -1));

        jLabel7.setText("Channel Date");
        jLabel7.setFont(new java.awt.Font("Times New Roman", 1, 18)); // NOI18N
        jPanel2.add(jLabel7, new org.netbeans.lib.awtextra.AbsoluteConstraints(16, 267, -1, -1));

        jTable1.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {

            },
            new String [] {
                "Channel No.", "Doctor No.", "Patient No.", "Room No.", "Date", "Time"
            }
        ) {
            Class[] types = new Class [] {
                java.lang.Integer.class, java.lang.String.class, java.lang.String.class, java.lang.Integer.class, java.lang.String.class, java.lang.String.class
            };

            public Class getColumnClass(int columnIndex) {
                return types [columnIndex];
            }
        });
        jTable1.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                jTable1MouseClicked(evt);
            }
        });
        jScrollPane1.setViewportView(jTable1);

        jLabel6.setText("APPOINTMENT REGISTRATION");
        jLabel6.setFont(new java.awt.Font("sansserif", 1, 24)); // NOI18N

        javax.swing.GroupLayout jPanel1Layout = new javax.swing.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel1Layout.createSequentialGroup()
                .addGap(41, 41, 41)
                .addComponent(jPanel2, javax.swing.GroupLayout.PREFERRED_SIZE, 472, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 479, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(59, 59, 59))
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addGap(381, 381, 381)
                .addComponent(jLabel6, javax.swing.GroupLayout.PREFERRED_SIZE, 379, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(340, Short.MAX_VALUE))
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addGap(22, 22, 22)
                .addComponent(jLabel6, javax.swing.GroupLayout.PREFERRED_SIZE, 55, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(18, 18, 18)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                    .addComponent(jPanel2, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(jScrollPane1, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.PREFERRED_SIZE, 473, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addContainerGap(62, Short.MAX_VALUE))
        );

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanel1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanel1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
        );

        pack();
        setLocationRelativeTo(null);
    }// </editor-fold>//GEN-END:initComponents

    private void jButton1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton1ActionPerformed
        // TODO add your handling code here:
         String chno = lblchno.getText();
       
        Doctor d = (Doctor) txtdoctor.getSelectedItem();
        Patient p = (Patient) txtpatient.getSelectedItem();
        String room = txtroom.getValue().toString();
        SimpleDateFormat dateformat = new SimpleDateFormat("yyyy-MM-dd");
        String date = dateformat.format(txtdate.getDate());
        String time = txttime.getText();
        System.out.print(time);

        try {
            pst = con.prepareStatement("insert into channel(channelno,doctorname,patientname,roomno,date,time) values(?,?,?,?,?,?)");

            pst.setString(1, chno);
            pst.setString(2, d.id);
            pst.setString(3, p.id);
            pst.setString(4, room);
            pst.setString(5, date);
            pst.setString(6, time);
            
            pst.executeUpdate();
            JOptionPane.showMessageDialog(this,"Channel Created");

            AutoID();
            
            txtdoctor.setSelectedIndex(-1);
           txtpatient.setSelectedIndex(-1);
            txtroom.setValue(0);
           Channel_table();  
         
           

        } catch (SQLException ex) {
            Logger.getLogger(Patient.class.getName()).log(Level.SEVERE, null, ex);
        }

        
    }//GEN-LAST:event_jButton1ActionPerformed

    private void jButton2ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton2ActionPerformed
        // TODO add your handling code here:
        
        
      

        try {
            pst = con.prepareStatement("delete from channel where channelno = ?");

            pst.setString(1, chno);
            
            
            pst.executeUpdate();
            JOptionPane.showMessageDialog(this,"Channel Deleted");

            AutoID();
            lblchno.setText("");
            txtdoctor.setSelectedIndex(-1);
           txtpatient.setSelectedIndex(-1);
            txtroom.setValue(0);
           Channel_table();  
         
           

        } catch (SQLException ex) {
            Logger.getLogger(Patient.class.getName()).log(Level.SEVERE, null, ex);
        }

        
    }//GEN-LAST:event_jButton2ActionPerformed

    private void jTable1MouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_jTable1MouseClicked
        // TODO add your handling code here:
        
        
        DefaultTableModel d1 = (DefaultTableModel) jTable1.getModel();
        int selectIndex = jTable1.getSelectedRow();
        chno = d1.getValueAt(selectIndex, 0).toString();
        
        //JOptionPane.showMessageDialog(this, chno);
        
        
        
    }//GEN-LAST:event_jTable1MouseClicked

    private void jButton3ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton3ActionPerformed
        // TODO add your handling code here:
          dispose();
    }//GEN-LAST:event_jButton3ActionPerformed

    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        /* Set the Nimbus look and feel */
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(Channel.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(Channel.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(Channel.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(Channel.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new Channel().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton jButton1;
    private javax.swing.JButton jButton2;
    private javax.swing.JButton jButton3;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JLabel jLabel6;
    private javax.swing.JLabel jLabel7;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JTable jTable1;
    private javax.swing.JLabel lblchno;
    private javax.swing.JComboBox txtdoctor;
    private javax.swing.JComboBox txtpatient;
    private javax.swing.JSpinner txtroom;
    private com.github.lgooddatepicker.components.TimePicker txttime;
    // End of variables declaration//GEN-END:variables
}
