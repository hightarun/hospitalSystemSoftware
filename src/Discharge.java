
import com.itextpdf.text.Document;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.pdf.PdfPCell;
import com.itextpdf.text.pdf.PdfPTable;
import com.itextpdf.text.pdf.PdfWriter;
import com.toedter.calendar.JTextFieldDateEditor;
import java.awt.HeadlessException;
import java.io.FileOutputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Vector;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JOptionPane;
import javax.swing.table.DefaultTableModel;

public class Discharge extends javax.swing.JFrame {

    public Discharge() {
        initComponents();
        getContentPane().setBackground(new java.awt.Color(153, 102, 255));
        Connect();
        AdmitTable();
        init();
        FillServices();
    }

    private void init() {
        //DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd"); 
        Date date = new Date();
        txtdate.setDate(date);
        txtdate.setEnabled(false);

        txtadate.setEnabled(false);
    }

    Connection con;
    PreparedStatement pst;
    ResultSet rs;
    String chno;
    float roomCharge;
    String billRoomType;
    String billPname;
    String billDname;
    String billTotalCost;
    String billServiceCost;
    ArrayList<String> billServices = new ArrayList<String>();
    String billDdate;
    String billTotalRoomDays;

    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jScrollPane3 = new javax.swing.JScrollPane();
        AdmitTable = new javax.swing.JTable();
        jPanel1 = new javax.swing.JPanel();
        jLabel6 = new javax.swing.JLabel();
        jLabel7 = new javax.swing.JLabel();
        jLabel9 = new javax.swing.JLabel();
        txtroomno = new javax.swing.JTextField();
        txtdoc = new javax.swing.JTextField();
        jButton3 = new javax.swing.JButton();
        txtadate = new com.toedter.calendar.JDateChooser();
        txtdate = new com.toedter.calendar.JDateChooser();
        jLabel10 = new javax.swing.JLabel();
        servicename = new javax.swing.JComboBox();
        jScrollPane2 = new javax.swing.JScrollPane();
        jTable1 = new javax.swing.JTable();
        jButton2 = new javax.swing.JButton();
        jLabel11 = new javax.swing.JLabel();
        txtpname = new javax.swing.JTextField();
        jLabel3 = new javax.swing.JLabel();
        jButton4 = new javax.swing.JButton();
        jButton5 = new javax.swing.JButton();
        jPanel2 = new javax.swing.JPanel();
        roomcost = new javax.swing.JTextField();
        jLabel4 = new javax.swing.JLabel();
        jLabel5 = new javax.swing.JLabel();
        servicecost = new javax.swing.JTextField();
        jLabel12 = new javax.swing.JLabel();
        totalbill = new javax.swing.JTextField();
        jLabel13 = new javax.swing.JLabel();
        totalcost = new javax.swing.JTextField();
        jButton1 = new javax.swing.JButton();
        jPanel3 = new javax.swing.JPanel();
        jLabel1 = new javax.swing.JLabel();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setTitle("Discharge Patient");
        getContentPane().setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        AdmitTable.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {

            },
            new String [] {
                "Patient Name", "Room No.", "Admit Status", "Doctor Name", "Remark", "Admit Date"
            }
        ) {
            Class[] types = new Class [] {
                java.lang.String.class, java.lang.Integer.class, java.lang.String.class, java.lang.String.class, java.lang.String.class, java.lang.String.class
            };

            public Class getColumnClass(int columnIndex) {
                return types [columnIndex];
            }
        });
        AdmitTable.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                AdmitTableMouseClicked(evt);
            }
        });
        jScrollPane3.setViewportView(AdmitTable);

        getContentPane().add(jScrollPane3, new org.netbeans.lib.awtextra.AbsoluteConstraints(600, 100, 570, 270));

        jPanel1.setBackground(new java.awt.Color(153, 102, 255));
        jPanel1.setBorder(javax.swing.BorderFactory.createTitledBorder(null, "Patient Info", javax.swing.border.TitledBorder.DEFAULT_JUSTIFICATION, javax.swing.border.TitledBorder.DEFAULT_POSITION, new java.awt.Font("Tahoma", 1, 14))); // NOI18N
        jPanel1.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        jLabel6.setFont(new java.awt.Font("Tahoma", 1, 12)); // NOI18N
        jLabel6.setText("Services");
        jPanel1.add(jLabel6, new org.netbeans.lib.awtextra.AbsoluteConstraints(20, 300, -1, 27));

        jLabel7.setFont(new java.awt.Font("Tahoma", 1, 12)); // NOI18N
        jLabel7.setText("Room");
        jPanel1.add(jLabel7, new org.netbeans.lib.awtextra.AbsoluteConstraints(20, 100, -1, 27));

        jLabel9.setFont(new java.awt.Font("Tahoma", 1, 12)); // NOI18N
        jLabel9.setText("Doctor Name");
        jPanel1.add(jLabel9, new org.netbeans.lib.awtextra.AbsoluteConstraints(20, 190, -1, 27));

        txtroomno.setEditable(false);
        jPanel1.add(txtroomno, new org.netbeans.lib.awtextra.AbsoluteConstraints(157, 98, 193, -1));

        txtdoc.setEditable(false);
        jPanel1.add(txtdoc, new org.netbeans.lib.awtextra.AbsoluteConstraints(157, 189, 193, -1));

        jButton3.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        jButton3.setText("Exit");
        jPanel1.add(jButton3, new org.netbeans.lib.awtextra.AbsoluteConstraints(520, 630, 119, 40));
        jPanel1.add(txtadate, new org.netbeans.lib.awtextra.AbsoluteConstraints(160, 140, 190, -1));
        jPanel1.add(txtdate, new org.netbeans.lib.awtextra.AbsoluteConstraints(160, 240, 190, -1));

        jLabel10.setFont(new java.awt.Font("Tahoma", 1, 12)); // NOI18N
        jLabel10.setText("Discharge Date");
        jPanel1.add(jLabel10, new org.netbeans.lib.awtextra.AbsoluteConstraints(20, 240, -1, 27));

        servicename.setEditable(true);
        servicename.addItemListener(new java.awt.event.ItemListener() {
            public void itemStateChanged(java.awt.event.ItemEvent evt) {
                servicenameItemStateChanged(evt);
            }
        });
        servicename.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                servicenameMouseClicked(evt);
            }
        });
        servicename.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                servicenameActionPerformed(evt);
            }
        });
        jPanel1.add(servicename, new org.netbeans.lib.awtextra.AbsoluteConstraints(160, 300, 160, -1));

        jTable1.setBorder(javax.swing.BorderFactory.createCompoundBorder());
        jTable1.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {

            },
            new String [] {
                "Name", "Cost"
            }
        ) {
            Class[] types = new Class [] {
                java.lang.String.class, java.lang.Integer.class
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
        jScrollPane2.setViewportView(jTable1);

        jPanel1.add(jScrollPane2, new org.netbeans.lib.awtextra.AbsoluteConstraints(20, 360, 420, 120));

        jButton2.setText("Add");
        jButton2.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton2ActionPerformed(evt);
            }
        });
        jPanel1.add(jButton2, new org.netbeans.lib.awtextra.AbsoluteConstraints(340, 300, -1, -1));

        jLabel11.setFont(new java.awt.Font("Tahoma", 1, 12)); // NOI18N
        jLabel11.setText("Admit Date");
        jPanel1.add(jLabel11, new org.netbeans.lib.awtextra.AbsoluteConstraints(20, 140, -1, 27));

        txtpname.setEditable(false);
        jPanel1.add(txtpname, new org.netbeans.lib.awtextra.AbsoluteConstraints(157, 54, 193, -1));

        jLabel3.setFont(new java.awt.Font("Tahoma", 1, 12)); // NOI18N
        jLabel3.setText("Patient Name");
        jPanel1.add(jLabel3, new org.netbeans.lib.awtextra.AbsoluteConstraints(20, 50, 84, 26));

        jButton4.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        jButton4.setText("Discharge");
        jButton4.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton4ActionPerformed(evt);
            }
        });
        jPanel1.add(jButton4, new org.netbeans.lib.awtextra.AbsoluteConstraints(20, 530, 119, 40));

        jButton5.setFont(new java.awt.Font("Tahoma", 1, 18)); // NOI18N
        jButton5.setText("Exit");
        jButton5.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton5ActionPerformed(evt);
            }
        });
        jPanel1.add(jButton5, new org.netbeans.lib.awtextra.AbsoluteConstraints(280, 530, 130, 40));

        getContentPane().add(jPanel1, new org.netbeans.lib.awtextra.AbsoluteConstraints(20, 100, 500, 590));

        jPanel2.setBackground(new java.awt.Color(153, 102, 255));
        jPanel2.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        roomcost.setEditable(false);
        roomcost.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                roomcostActionPerformed(evt);
            }
        });
        jPanel2.add(roomcost, new org.netbeans.lib.awtextra.AbsoluteConstraints(160, 30, 130, -1));

        jLabel4.setFont(new java.awt.Font("Tahoma", 1, 12)); // NOI18N
        jLabel4.setText("Room Charge");
        jPanel2.add(jLabel4, new org.netbeans.lib.awtextra.AbsoluteConstraints(30, 30, 84, 26));

        jLabel5.setFont(new java.awt.Font("Tahoma", 1, 12)); // NOI18N
        jLabel5.setText("Service Charge");
        jPanel2.add(jLabel5, new org.netbeans.lib.awtextra.AbsoluteConstraints(30, 80, 100, 26));

        servicecost.setEditable(false);
        jPanel2.add(servicecost, new org.netbeans.lib.awtextra.AbsoluteConstraints(160, 80, 130, -1));

        jLabel12.setFont(new java.awt.Font("Tahoma", 1, 18)); // NOI18N
        jLabel12.setText("Total (Incl. Tax 5%)");
        jPanel2.add(jLabel12, new org.netbeans.lib.awtextra.AbsoluteConstraints(300, 140, 190, 40));

        totalbill.setEditable(false);
        jPanel2.add(totalbill, new org.netbeans.lib.awtextra.AbsoluteConstraints(510, 140, 130, 40));

        jLabel13.setFont(new java.awt.Font("Tahoma", 1, 12)); // NOI18N
        jLabel13.setText("TOTAL CHARGE");
        jPanel2.add(jLabel13, new org.netbeans.lib.awtextra.AbsoluteConstraints(380, 80, 100, 26));

        totalcost.setEditable(false);
        jPanel2.add(totalcost, new org.netbeans.lib.awtextra.AbsoluteConstraints(510, 80, 130, -1));

        jButton1.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        jButton1.setText("Generate Bill");
        jButton1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton1ActionPerformed(evt);
            }
        });
        jPanel2.add(jButton1, new org.netbeans.lib.awtextra.AbsoluteConstraints(500, 210, 140, 50));

        getContentPane().add(jPanel2, new org.netbeans.lib.awtextra.AbsoluteConstraints(550, 400, 690, 280));

        jPanel3.setBackground(new java.awt.Color(153, 102, 255));

        jLabel1.setFont(new java.awt.Font("Tahoma", 1, 36)); // NOI18N
        jLabel1.setText("DISCHARGE PATIENT");
        jPanel3.add(jLabel1);

        getContentPane().add(jPanel3, new org.netbeans.lib.awtextra.AbsoluteConstraints(390, 10, 450, 70));

        pack();
        setLocationRelativeTo(null);
    }// </editor-fold>//GEN-END:initComponents

    private void AdmitTableMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_AdmitTableMouseClicked

        DefaultTableModel d1 = (DefaultTableModel) AdmitTable.getModel();
        int SelectIndex = AdmitTable.getSelectedRow();

        if (d1.getValueAt(SelectIndex, 2).toString().equals("Discharged")) {
            JOptionPane.showMessageDialog(this, "Patient already discharged.");
        } else {
            String patName = d1.getValueAt(SelectIndex, 0).toString();
            String roomNo = d1.getValueAt(SelectIndex, 1).toString();
            String docName = d1.getValueAt(SelectIndex, 3).toString();
            String date = d1.getValueAt(SelectIndex, 5).toString();
            int days, roomCost = 2500;

            //room type to get roomcost
            try {
                pst = con.prepareStatement("select RoomType from Room where RoomNo = ?");
                pst.setString(1, roomNo);
                rs = pst.executeQuery();
                rs.next();
                if (rs.getString(1).equals("General")) {
                    roomCost = 1200;
                }

            } catch (SQLException ex) {
                Logger.getLogger(Discharge.class.getName()).log(Level.SEVERE, null, ex);
            }

            //set fields from table and calculate roomCharge
            try {
                Date admitdate = new SimpleDateFormat("yyyy-MM-dd").parse(date);
                txtadate.setDate(admitdate);
                txtpname.setText(patName);
                txtroomno.setText(roomNo);
                txtdoc.setText(docName);
                Date adate = new Date();
                txtdate.setDate(adate);
                if (!txtdoc.equals("")) {
                    jButton4.setEnabled(true);
                }

                SimpleDateFormat dateformat = new SimpleDateFormat("dd MM yyyy");
                String startDate = dateformat.format(txtadate.getDate());
                String endDate = dateformat.format(txtdate.getDate());

                Date dateBefore = dateformat.parse(startDate);
                Date dateAfter = dateformat.parse(endDate);
                long difference = dateAfter.getTime() - dateBefore.getTime();
                days = (int) (difference / (1000 * 60 * 60 * 24));
                roomCharge = days * roomCost;
                billTotalRoomDays = String.valueOf(days);
                if (roomCost == 1200) {
                    billRoomType = "General";
                } else {
                    billRoomType = "Deluxe";
                }

            } catch (ParseException ex) {
                System.out.println(ex);
            }

        }

    }//GEN-LAST:event_AdmitTableMouseClicked

    private void jButton1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton1ActionPerformed
        //generate bill
        String path = "D:/PDF/";
        Document doc = new Document();
        try {

            PdfWriter.getInstance(doc, new FileOutputStream(path + billPname + ".pdf"));
            doc.open();
            Paragraph paragraph1 = new Paragraph("                                                                    INVOICE");
            doc.add(paragraph1);
            Paragraph paragraph2 = new Paragraph("                                                               Kailash Hospital");
            doc.add(paragraph2);
            Paragraph paragraph7 = new Paragraph("                                                                    Discharge\n\n\n");
            doc.add(paragraph7);
            Paragraph paragraph3 = new Paragraph(" Dischare Date: " + billDdate + "\n");
            doc.add(paragraph3);
            Paragraph paragraph5 = new Paragraph(" Patient Name: " + billPname + "\n");
            doc.add(paragraph5);
            Paragraph paragraph6 = new Paragraph(" Doctor Name: " + billDname + "\n\n\n\n");
            doc.add(paragraph6);

            PdfPTable table = new PdfPTable(1);

            PdfPCell cell = new PdfPCell(new Paragraph("Services :"));
            table.addCell(cell);

            for (int i = 0; i < billServices.size(); i++) {
                PdfPCell cell2 = new PdfPCell(new Paragraph("               -" + billServices.get(i)));
                table.addCell(cell2);
            }
            PdfPCell cell5 = new PdfPCell(new Paragraph("Total Service Charge                                                                  |" + " Rs." + billServiceCost + "/-"));
            table.addCell(cell5);
            PdfPCell cell4 = new PdfPCell(new Paragraph("Total Room Charge" + " (" + billRoomType + ") " + " for " + billTotalRoomDays + " days                                  |" + " Rs." + roomCharge + "/-"));
            table.addCell(cell4);

            doc.add(table);

            float taxs = Float.parseFloat(totalcost.getText()) * 0.05f;
            float totalCost = Float.parseFloat(totalcost.getText());
            Paragraph paragraph4 = new Paragraph("\n\n\n\n\n\n                                                                                                                     Total : " + totalCost);
            doc.add(paragraph4);
            Paragraph paragraph12 = new Paragraph("\n                                                                                                                  Tax(5%) : " + taxs);
            doc.add(paragraph12);
            Paragraph paragraph13 = new Paragraph("\n                                                                                                          Amount Paid : " + billTotalCost);
            doc.add(paragraph13);

            JOptionPane.showMessageDialog(null, " DISCHARGE BILL GENERATED");
            doc.close();
        } catch (Exception e) {
            e.printStackTrace();
            JOptionPane.showMessageDialog(null, e);
        }


    }//GEN-LAST:event_jButton1ActionPerformed

    private void servicenameItemStateChanged(java.awt.event.ItemEvent evt) {//GEN-FIRST:event_servicenameItemStateChanged

    }//GEN-LAST:event_servicenameItemStateChanged

    private void servicenameActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_servicenameActionPerformed

    }//GEN-LAST:event_servicenameActionPerformed

    private void servicenameMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_servicenameMouseClicked

    }//GEN-LAST:event_servicenameMouseClicked

    private void jButton2ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton2ActionPerformed
        String servicee = servicename.getSelectedItem().toString();

        DefaultTableModel df = (DefaultTableModel) jTable1.getModel();

        try {

            String sql = "SELECT ServiceCost from services where ServiceName='" + servicee + "'";
            pst = con.prepareStatement(sql);
            rs = pst.executeQuery();
            rs.next();
            Vector v2 = new Vector();

            v2.add(servicee);
            v2.add(rs.getString(1));
            df.addRow(v2);

        } catch (HeadlessException | SQLException ex) {
            JOptionPane.showMessageDialog(this, ex);
        }


    }//GEN-LAST:event_jButton2ActionPerformed

    private void jButton4ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton4ActionPerformed
        //DISCHARGE
        SimpleDateFormat dateformat = new SimpleDateFormat("yyyy-MM-dd");

        String pname = txtpname.getText();
        String roomno = txtroomno.getText();
        String admitDate = dateformat.format(txtadate.getDate());
        String docname = txtdoc.getText();
        String dischargeDate = dateformat.format(txtdate.getDate());
        String admitStatus = "Discharged";
        String roomStatus = "Vacant";

        //for bill
        billPname = pname;
        billDname = docname;
        billDdate = dischargeDate;

        Float serviceCost = 0f;

        //update discharge table
        try {
            pst = con.prepareStatement("insert into discharge(PatientName, RoomNo, AdmitDate, DoctorName, DischargeDate) values(?,?,?,?,?)");

            pst.setString(1, pname);
            pst.setString(2, roomno);
            pst.setString(3, admitDate);
            pst.setString(4, docname);
            pst.setString(5, dischargeDate);

            pst.executeUpdate();
            AdmitTable();

        } catch (SQLException ex) {
            System.out.println(ex);
        }

        //get services from service table
        DefaultTableModel df = (DefaultTableModel) jTable1.getModel();

        for (int i = 0; i < jTable1.getRowCount(); i++) {
            billServices.add(jTable1.getValueAt(i, 0).toString());
            serviceCost += Float.parseFloat(jTable1.getValueAt(i, 1).toString());
        }

        billServiceCost = String.valueOf(serviceCost);

        //set bill
        roomcost.setText(Float.toString(roomCharge));
        servicecost.setText(Float.toString(serviceCost));

        totalcost.setText(Float.toString(roomCharge + serviceCost));

        float tax = (roomCharge + serviceCost) * 0.05f;
        float billAmount = (roomCharge + serviceCost) + tax;
        totalbill.setText(Float.toString(billAmount));
        billTotalCost = Float.toString(billAmount);

        //set patient admit status to discharged
        try {
            pst = con.prepareStatement("update admit set AdmitStatus=? where RoomNo=? ");

            pst.setString(1, admitStatus);
            pst.setString(2, roomno);
            pst.executeUpdate();
            AdmitTable();

        } catch (SQLException ex) {
            System.out.println(ex);
        }

        //set room status to vacant
        try {
            pst = con.prepareStatement("update Room set RoomStatus=? where Roomno=? ");

            pst.setString(1, roomStatus);
            pst.setString(2, roomno);
            pst.executeUpdate();

        } catch (SQLException ex) {
            System.out.println(ex);
        }

        //clear fields
        txtpname.setText("");
        txtroomno.setText("");
        txtdoc.setText("");
        txtadate.setCalendar(null);
        txtdate.setCalendar(null);
        servicename.setSelectedIndex(-1);
        DefaultTableModel d1 = (DefaultTableModel) jTable1.getModel();
        d1.setRowCount(0);
        jButton4.setEnabled(false);


    }//GEN-LAST:event_jButton4ActionPerformed

    private void jTable1MouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_jTable1MouseClicked
        DefaultTableModel d1 = (DefaultTableModel) jTable1.getModel();
        int SelectIndex = jTable1.getSelectedRow();

        d1.removeRow(SelectIndex);
        JOptionPane.showMessageDialog(this, "Service Removed");
    }//GEN-LAST:event_jTable1MouseClicked

    private void roomcostActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_roomcostActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_roomcostActionPerformed

    private void jButton5ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton5ActionPerformed
        // TODO add your handling code here:
        this.setVisible(false);
    }//GEN-LAST:event_jButton5ActionPerformed

    public void Connect() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost/hospital", "root", "");
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(User.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(User.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    private void FillServices() {

        try {

            String sql = "SELECT ServiceName from services";
            pst = con.prepareStatement(sql);
            rs = pst.executeQuery();
            while (rs.next()) {
                String add = rs.getString("ServiceName");
                servicename.addItem(add);
            }
        } catch (HeadlessException | SQLException ex) {
            JOptionPane.showMessageDialog(this, ex);
        }
    }

    public void AdmitTable() {
        try {
            pst = con.prepareStatement("select PatientName, RoomNo, AdmitStatus, DocName, Remarks, AdmitDate from admit");
            rs = pst.executeQuery();

            ResultSetMetaData Rsm = rs.getMetaData();
            int c;
            c = Rsm.getColumnCount();
            DefaultTableModel df = (DefaultTableModel) AdmitTable.getModel();

            df.setRowCount(0);

            while (rs.next()) {

                Vector v2 = new Vector();

                for (int i = 1; i <= c; i++) {
                    v2.add(rs.getString(1));
                    v2.add(rs.getString(2));
                    v2.add(rs.getString(3));
                    v2.add(rs.getString(4));
                    v2.add(rs.getString(5));
                    v2.add(rs.getString(6));

                }

                df.addRow(v2);
            }

        } catch (SQLException ex) {

        }

    }

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
            java.util.logging.Logger.getLogger(Discharge.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(Discharge.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(Discharge.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(Discharge.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new Discharge().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JTable AdmitTable;
    private javax.swing.JButton jButton1;
    private javax.swing.JButton jButton2;
    private javax.swing.JButton jButton3;
    private javax.swing.JButton jButton4;
    private javax.swing.JButton jButton5;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel10;
    private javax.swing.JLabel jLabel11;
    private javax.swing.JLabel jLabel12;
    private javax.swing.JLabel jLabel13;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JLabel jLabel6;
    private javax.swing.JLabel jLabel7;
    private javax.swing.JLabel jLabel9;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JPanel jPanel3;
    private javax.swing.JScrollPane jScrollPane2;
    private javax.swing.JScrollPane jScrollPane3;
    private javax.swing.JTable jTable1;
    public javax.swing.JTextField roomcost;
    public javax.swing.JTextField servicecost;
    public javax.swing.JComboBox servicename;
    public javax.swing.JTextField totalbill;
    public javax.swing.JTextField totalcost;
    private com.toedter.calendar.JDateChooser txtadate;
    private com.toedter.calendar.JDateChooser txtdate;
    public javax.swing.JTextField txtdoc;
    public javax.swing.JTextField txtpname;
    public javax.swing.JTextField txtroomno;
    // End of variables declaration//GEN-END:variables
}
