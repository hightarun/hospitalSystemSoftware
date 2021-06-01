
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.swing.JOptionPane;

public class ChangePassword extends javax.swing.JFrame {
 Connection con = null;
    ResultSet rs = null;
    PreparedStatement pst = null;
    
    /**
     * Creates new form ChangePassword
     */
   
    int userId;
    
    public ChangePassword() {
        initComponents();
    }
    
    public ChangePassword(int uid)
    {
        this.userId=uid;
        initComponents();
    }
    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jPanel3 = new javax.swing.JPanel();
        jPanel2 = new javax.swing.JPanel();
        jLabel3 = new javax.swing.JLabel();
        txtresetpass = new javax.swing.JTextField();
        jLabel6 = new javax.swing.JLabel();
        jLabel5 = new javax.swing.JLabel();
        txtresetpass2 = new javax.swing.JTextField();
        jButton1 = new javax.swing.JButton();
        jLabel7 = new javax.swing.JLabel();
        txtresetpass1 = new javax.swing.JTextField();
        jLabel8 = new javax.swing.JLabel();
        txtresetpass3 = new javax.swing.JTextField();
        jButton2 = new javax.swing.JButton();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setTitle("Change Password");

        jPanel3.setBackground(new java.awt.Color(153, 102, 255));
        jPanel3.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        jPanel2.setBackground(new java.awt.Color(51, 51, 51));

        jLabel3.setFont(new java.awt.Font("Tahoma", 1, 30)); // NOI18N
        jLabel3.setForeground(new java.awt.Color(255, 255, 255));
        jLabel3.setText("CHANGE PASSWORD");

        javax.swing.GroupLayout jPanel2Layout = new javax.swing.GroupLayout(jPanel2);
        jPanel2.setLayout(jPanel2Layout);
        jPanel2Layout.setHorizontalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel2Layout.createSequentialGroup()
                .addContainerGap(417, Short.MAX_VALUE)
                .addComponent(jLabel3)
                .addGap(411, 411, 411))
        );
        jPanel2Layout.setVerticalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel2Layout.createSequentialGroup()
                .addGap(27, 27, 27)
                .addComponent(jLabel3, javax.swing.GroupLayout.DEFAULT_SIZE, 49, Short.MAX_VALUE)
                .addGap(24, 24, 24))
        );

        jPanel3.add(jPanel2, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 0, -1, -1));

        txtresetpass.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                txtresetpassActionPerformed(evt);
            }
        });
        jPanel3.add(txtresetpass, new org.netbeans.lib.awtextra.AbsoluteConstraints(650, 340, 270, 30));

        jLabel6.setFont(new java.awt.Font("Tahoma", 1, 24)); // NOI18N
        jLabel6.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel6.setText("New Password");
        jPanel3.add(jLabel6, new org.netbeans.lib.awtextra.AbsoluteConstraints(200, 330, 200, 50));

        jLabel5.setFont(new java.awt.Font("Tahoma", 1, 24)); // NOI18N
        jLabel5.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel5.setText("Enter New Password Again");
        jPanel3.add(jLabel5, new org.netbeans.lib.awtextra.AbsoluteConstraints(200, 400, 330, 40));

        txtresetpass2.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                txtresetpass2ActionPerformed(evt);
            }
        });
        jPanel3.add(txtresetpass2, new org.netbeans.lib.awtextra.AbsoluteConstraints(650, 410, 270, 30));

        jButton1.setFont(new java.awt.Font("Tahoma", 1, 18)); // NOI18N
        jButton1.setText("CHANGE PASSWORD");
        jButton1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton1ActionPerformed(evt);
            }
        });
        jPanel3.add(jButton1, new org.netbeans.lib.awtextra.AbsoluteConstraints(460, 490, 230, 50));

        jLabel7.setFont(new java.awt.Font("Tahoma", 1, 24)); // NOI18N
        jLabel7.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel7.setText("Current Password");
        jPanel3.add(jLabel7, new org.netbeans.lib.awtextra.AbsoluteConstraints(190, 260, 250, 50));

        txtresetpass1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                txtresetpass1ActionPerformed(evt);
            }
        });
        jPanel3.add(txtresetpass1, new org.netbeans.lib.awtextra.AbsoluteConstraints(650, 270, 270, 30));

        jLabel8.setFont(new java.awt.Font("Tahoma", 1, 24)); // NOI18N
        jLabel8.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel8.setText("Enter your E-Mail");
        jPanel3.add(jLabel8, new org.netbeans.lib.awtextra.AbsoluteConstraints(190, 180, 250, 50));

        txtresetpass3.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                txtresetpass3ActionPerformed(evt);
            }
        });
        jPanel3.add(txtresetpass3, new org.netbeans.lib.awtextra.AbsoluteConstraints(650, 190, 270, 30));

        jButton2.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        jButton2.setText("Exit");
        jButton2.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton2ActionPerformed(evt);
            }
        });
        jPanel3.add(jButton2, new org.netbeans.lib.awtextra.AbsoluteConstraints(520, 580, 100, 50));

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 1110, Short.MAX_VALUE)
            .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                .addGroup(layout.createSequentialGroup()
                    .addGap(0, 0, Short.MAX_VALUE)
                    .addComponent(jPanel3, javax.swing.GroupLayout.PREFERRED_SIZE, 1110, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addGap(0, 0, Short.MAX_VALUE)))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 660, Short.MAX_VALUE)
            .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                .addGroup(layout.createSequentialGroup()
                    .addGap(0, 0, Short.MAX_VALUE)
                    .addComponent(jPanel3, javax.swing.GroupLayout.PREFERRED_SIZE, 660, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addGap(0, 0, Short.MAX_VALUE)))
        );

        pack();
        setLocationRelativeTo(null);
    }// </editor-fold>//GEN-END:initComponents

    private void txtresetpassActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_txtresetpassActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_txtresetpassActionPerformed

    private void txtresetpass2ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_txtresetpass2ActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_txtresetpass2ActionPerformed

    private void jButton1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton1ActionPerformed
        // TODO add your handling code here:
        boolean flag = false;
        try{
               
                String Query = "SELECT password FROM user where id = '"+userId+"'";
                //"UPDATE user SET password=? WHERE email="+user+"";
                con = DriverManager.getConnection("jdbc:mysql://localhost/hospital", "root","");
                pst=con.prepareStatement(Query);
                rs = pst.executeQuery();
                rs.next();
                if(!(txtresetpass1.getText().equals(rs.getString(1))))
                {
                    JOptionPane.showMessageDialog(null, "Current password is incorrect");
                    return;
                }
                else{
                    flag = true;
                }
   
            }catch(Exception ex){
                JOptionPane.showMessageDialog(null, ex);
            }
        
        if(txtresetpass.getText().equals(txtresetpass2.getText()) && flag){
            //check whether the user enter same password in both textfield
            try{
               
                String updateQuery = "UPDATE `user` SET `password`= ? WHERE id = '"+userId+"'";
                //"UPDATE user SET password=? WHERE email="+user+"";
                con = DriverManager.getConnection("jdbc:mysql://localhost/hospital", "root","");
                pst=con.prepareStatement(updateQuery);
                pst.setString(1, txtresetpass2.getText());
                pst.executeUpdate();
                JOptionPane.showMessageDialog(null, "Reset Successfully");

            }catch(Exception ex){
                JOptionPane.showMessageDialog(null, ex);
            }
        }else{
            JOptionPane.showMessageDialog(null, "password do not match");
        }
    }//GEN-LAST:event_jButton1ActionPerformed

    private void txtresetpass1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_txtresetpass1ActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_txtresetpass1ActionPerformed

    private void txtresetpass3ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_txtresetpass3ActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_txtresetpass3ActionPerformed

    private void jButton2ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton2ActionPerformed
        // TODO add your handling code here:
        this.setVisible(false);
    }//GEN-LAST:event_jButton2ActionPerformed

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
            java.util.logging.Logger.getLogger(ChangePassword.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(ChangePassword.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(ChangePassword.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(ChangePassword.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new ChangePassword().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton jButton1;
    private javax.swing.JButton jButton2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JLabel jLabel6;
    private javax.swing.JLabel jLabel7;
    private javax.swing.JLabel jLabel8;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JPanel jPanel3;
    private javax.swing.JTextField txtresetpass;
    private javax.swing.JTextField txtresetpass1;
    private javax.swing.JTextField txtresetpass2;
    private javax.swing.JTextField txtresetpass3;
    // End of variables declaration//GEN-END:variables
}