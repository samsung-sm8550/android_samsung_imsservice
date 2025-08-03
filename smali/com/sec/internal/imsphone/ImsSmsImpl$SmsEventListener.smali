.class Lcom/sec/internal/imsphone/ImsSmsImpl$SmsEventListener;
.super Lcom/sec/ims/sms/ISmsServiceEventListener$Stub;
.source "ImsSmsImpl.java"


# instance fields
.field final synthetic this$0:Lcom/sec/internal/imsphone/ImsSmsImpl;


# direct methods
.method private constructor <init>(Lcom/sec/internal/imsphone/ImsSmsImpl;)V
    .locals 0

    .line 1341
    iput-object p1, p0, Lcom/sec/internal/imsphone/ImsSmsImpl$SmsEventListener;->this$0:Lcom/sec/internal/imsphone/ImsSmsImpl;

    invoke-direct {p0}, Lcom/sec/ims/sms/ISmsServiceEventListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/imsphone/ImsSmsImpl;Lcom/sec/internal/imsphone/ImsSmsImpl$SmsEventListener-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/imsphone/ImsSmsImpl$SmsEventListener;-><init>(Lcom/sec/internal/imsphone/ImsSmsImpl;)V

    return-void
.end method


# virtual methods
.method public onReceiveIncomingSMS(ILjava/lang/String;[B)V
    .locals 6

    if-nez p2, :cond_0

    return-void

    .line 1348
    :cond_0
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;

    invoke-direct {v0}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;-><init>()V

    .line 1350
    const-string v1, "application/vnd.3gpp.sms"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 1352
    iget-object v1, p0, Lcom/sec/internal/imsphone/ImsSmsImpl$SmsEventListener;->this$0:Lcom/sec/internal/imsphone/ImsSmsImpl;

    const/4 v3, 0x2

    invoke-static {v1, v3}, Lcom/sec/internal/imsphone/ImsSmsImpl;->-$$Nest$fputmCurrentNetworkType(Lcom/sec/internal/imsphone/ImsSmsImpl;I)V

    .line 1353
    const-string v1, "3gpp"

    invoke-virtual {v0, p3, v1}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->parseDeliverPdu([BLjava/lang/String;)V

    .line 1354
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->getMessageType()I

    move-result v4

    if-ne v4, v2, :cond_1

    .line 1355
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl$SmsEventListener;->this$0:Lcom/sec/internal/imsphone/ImsSmsImpl;

    invoke-virtual {v0, p1, v1, p3}, Landroid/telephony/ims/stub/ImsSmsImplBase;->onSmsReceived(ILjava/lang/String;[B)V

    goto :goto_0

    .line 1356
    :cond_1
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->getMessageType()I

    move-result v2

    if-ne v2, v3, :cond_4

    .line 1357
    iget-object v2, p0, Lcom/sec/internal/imsphone/ImsSmsImpl$SmsEventListener;->this$0:Lcom/sec/internal/imsphone/ImsSmsImpl;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->getMessageRef()I

    move-result v0

    invoke-static {v2, v0, p1, v1, p3}, Lcom/sec/internal/imsphone/ImsSmsImpl;->-$$Nest$mhandleStatusReport(Lcom/sec/internal/imsphone/ImsSmsImpl;IILjava/lang/String;[B)V

    goto :goto_0

    .line 1359
    :cond_2
    const-string v1, "application/vnd.3gpp2.sms"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1361
    iget-object v1, p0, Lcom/sec/internal/imsphone/ImsSmsImpl$SmsEventListener;->this$0:Lcom/sec/internal/imsphone/ImsSmsImpl;

    invoke-static {v1, v2}, Lcom/sec/internal/imsphone/ImsSmsImpl;->-$$Nest$fputmCurrentNetworkType(Lcom/sec/internal/imsphone/ImsSmsImpl;I)V

    .line 1362
    invoke-virtual {v0, p3}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->convertToFrameworkSmsFormat([B)[B

    move-result-object v1

    .line 1363
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->getMsgID()I

    move-result v2

    .line 1364
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->getMessageType()I

    move-result v3

    const/4 v4, 0x4

    const-string v5, "3gpp2"

    if-ne v3, v4, :cond_3

    .line 1365
    iget-object v2, p0, Lcom/sec/internal/imsphone/ImsSmsImpl$SmsEventListener;->this$0:Lcom/sec/internal/imsphone/ImsSmsImpl;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->getMsgID()I

    move-result v0

    invoke-static {v2, v0, p1, v5, v1}, Lcom/sec/internal/imsphone/ImsSmsImpl;->-$$Nest$mhandleStatusReport(Lcom/sec/internal/imsphone/ImsSmsImpl;IILjava/lang/String;[B)V

    goto :goto_0

    .line 1367
    :cond_3
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl$SmsEventListener;->this$0:Lcom/sec/internal/imsphone/ImsSmsImpl;

    invoke-virtual {v0, v2, v5, v1}, Landroid/telephony/ims/stub/ImsSmsImplBase;->onSmsReceived(ILjava/lang/String;[B)V

    .line 1370
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl$SmsEventListener;->this$0:Lcom/sec/internal/imsphone/ImsSmsImpl;

    invoke-static {v0}, Lcom/sec/internal/imsphone/ImsSmsImpl;->-$$Nest$fgetmSmsLogger(Lcom/sec/internal/imsphone/ImsSmsImpl;)Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/imsphone/ImsSmsImpl$SmsEventListener;->this$0:Lcom/sec/internal/imsphone/ImsSmsImpl;

    invoke-static {v1}, Lcom/sec/internal/imsphone/ImsSmsImpl;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/imsphone/ImsSmsImpl;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "< NEW_SMS : contentType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " messageId = "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;->logAndAdd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1371
    invoke-static {}, Lcom/sec/internal/helper/os/BuildProxy;->isShipBuild()Z

    move-result p1

    if-nez p1, :cond_5

    .line 1372
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl$SmsEventListener;->this$0:Lcom/sec/internal/imsphone/ImsSmsImpl;

    invoke-static {p0}, Lcom/sec/internal/imsphone/ImsSmsImpl;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/imsphone/ImsSmsImpl;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "pdu = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-void
.end method

.method public onReceiveSMSAck(IILjava/lang/String;[BI)V
    .locals 8

    .line 1378
    const-string v0, "application/vnd.3gpp2.sms"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x2

    .line 1379
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl$SmsEventListener;->this$0:Lcom/sec/internal/imsphone/ImsSmsImpl;

    invoke-static {v0, p1}, Lcom/sec/internal/imsphone/ImsSmsImpl;->-$$Nest$mgetTokenByMessageId(Lcom/sec/internal/imsphone/ImsSmsImpl;I)I

    move-result v3

    const/4 v0, -0x1

    if-ne v3, v0, :cond_1

    .line 1381
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl$SmsEventListener;->this$0:Lcom/sec/internal/imsphone/ImsSmsImpl;

    invoke-static {p0}, Lcom/sec/internal/imsphone/ImsSmsImpl;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/imsphone/ImsSmsImpl;)Ljava/lang/String;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "messageID = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " cannot find token"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1384
    :cond_1
    new-instance v7, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;

    invoke-direct {v7, p1, p2, p4, p3}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;-><init>(II[BI)V

    .line 1385
    iget-object v1, p0, Lcom/sec/internal/imsphone/ImsSmsImpl$SmsEventListener;->this$0:Lcom/sec/internal/imsphone/ImsSmsImpl;

    invoke-static {v1}, Lcom/sec/internal/imsphone/ImsSmsImpl;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/imsphone/ImsSmsImpl;)I

    move-result v2

    move v4, p1

    move v5, p2

    move v6, p5

    invoke-static/range {v1 .. v7}, Lcom/sec/internal/imsphone/ImsSmsImpl;->-$$Nest$monReceiveSMSSuccssAcknowledgment(Lcom/sec/internal/imsphone/ImsSmsImpl;IIIIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    return-void
.end method

.method public onReceiveSMSDeliveryReportAck(III)V
    .locals 5

    .line 1390
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl$SmsEventListener;->this$0:Lcom/sec/internal/imsphone/ImsSmsImpl;

    invoke-static {v0}, Lcom/sec/internal/imsphone/ImsSmsImpl;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/imsphone/ImsSmsImpl;)I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 1391
    iget-object v1, p0, Lcom/sec/internal/imsphone/ImsSmsImpl$SmsEventListener;->this$0:Lcom/sec/internal/imsphone/ImsSmsImpl;

    invoke-static {v1}, Lcom/sec/internal/imsphone/ImsSmsImpl;->-$$Nest$fgetmSmsLogger(Lcom/sec/internal/imsphone/ImsSmsImpl;)Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/imsphone/ImsSmsImpl$SmsEventListener;->this$0:Lcom/sec/internal/imsphone/ImsSmsImpl;

    invoke-static {v2}, Lcom/sec/internal/imsphone/ImsSmsImpl;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/imsphone/ImsSmsImpl;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "< SMS_ACK : mno "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " messageId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " reasonCode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " retryAfter "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;->logAndAdd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1394
    sget-object v1, Lcom/sec/internal/constants/Mno;->KDDI:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_0

    const/4 v0, -0x1

    if-eq p3, v0, :cond_0

    .line 1397
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl$SmsEventListener;->this$0:Lcom/sec/internal/imsphone/ImsSmsImpl;

    invoke-static {v0}, Lcom/sec/internal/imsphone/ImsSmsImpl;->-$$Nest$fgetmSentDeliveryAck(Lcom/sec/internal/imsphone/ImsSmsImpl;)Lcom/sec/internal/imsphone/ImsSmsImpl$LastSentDeliveryAck;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1398
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl$SmsEventListener;->this$0:Lcom/sec/internal/imsphone/ImsSmsImpl;

    invoke-static {v0}, Lcom/sec/internal/imsphone/ImsSmsImpl;->-$$Nest$fgetmSentDeliveryAck(Lcom/sec/internal/imsphone/ImsSmsImpl;)Lcom/sec/internal/imsphone/ImsSmsImpl$LastSentDeliveryAck;

    move-result-object v0

    iget v0, v0, Lcom/sec/internal/imsphone/ImsSmsImpl$LastSentDeliveryAck;->mRetryCount:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 1399
    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsSmsImpl$SmsEventListener;->this$0:Lcom/sec/internal/imsphone/ImsSmsImpl;

    invoke-static {p1}, Lcom/sec/internal/imsphone/ImsSmsImpl;->-$$Nest$fgetmHandler(Lcom/sec/internal/imsphone/ImsSmsImpl;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/internal/imsphone/ImsSmsImpl$SmsEventListener;->this$0:Lcom/sec/internal/imsphone/ImsSmsImpl;

    invoke-static {p2}, Lcom/sec/internal/imsphone/ImsSmsImpl;->-$$Nest$fgetmSentDeliveryAck(Lcom/sec/internal/imsphone/ImsSmsImpl;)Lcom/sec/internal/imsphone/ImsSmsImpl$LastSentDeliveryAck;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1400
    iget-object p2, p0, Lcom/sec/internal/imsphone/ImsSmsImpl$SmsEventListener;->this$0:Lcom/sec/internal/imsphone/ImsSmsImpl;

    invoke-static {p2}, Lcom/sec/internal/imsphone/ImsSmsImpl;->-$$Nest$fgetmHandler(Lcom/sec/internal/imsphone/ImsSmsImpl;)Landroid/os/Handler;

    move-result-object p2

    int-to-long v0, p3

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1401
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl$SmsEventListener;->this$0:Lcom/sec/internal/imsphone/ImsSmsImpl;

    invoke-static {p0}, Lcom/sec/internal/imsphone/ImsSmsImpl;->-$$Nest$fgetmSentDeliveryAck(Lcom/sec/internal/imsphone/ImsSmsImpl;)Lcom/sec/internal/imsphone/ImsSmsImpl$LastSentDeliveryAck;

    move-result-object p0

    iget p1, p0, Lcom/sec/internal/imsphone/ImsSmsImpl$LastSentDeliveryAck;->mRetryCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/sec/internal/imsphone/ImsSmsImpl$LastSentDeliveryAck;->mRetryCount:I

    return-void

    .line 1408
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl$SmsEventListener;->this$0:Lcom/sec/internal/imsphone/ImsSmsImpl;

    invoke-virtual {p0, p1, p2}, Landroid/telephony/ims/stub/ImsSmsImplBase;->onReceiveSmsDeliveryReportAck(II)V

    return-void
.end method
