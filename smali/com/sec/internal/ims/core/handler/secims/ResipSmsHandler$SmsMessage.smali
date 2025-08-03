.class public Lcom/sec/internal/ims/core/handler/secims/ResipSmsHandler$SmsMessage;
.super Ljava/lang/Object;
.source "ResipSmsHandler.java"


# instance fields
.field callId:Ljava/lang/String;

.field contentType:Ljava/lang/String;

.field errorCode:I

.field isDeliveryReport:Z

.field isEmergency:Z

.field isNTN:Z

.field localuri:Ljava/lang/String;

.field msgId:I

.field pdu:[B

.field sentTime:J

.field smsc:Ljava/lang/String;

.field ua:Lcom/sec/internal/ims/core/handler/secims/UserAgent;


# direct methods
.method public constructor <init>(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BIZLjava/lang/String;ZJZ)V
    .locals 0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSmsHandler$SmsMessage;->ua:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    .line 92
    iput-object p2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSmsHandler$SmsMessage;->smsc:Ljava/lang/String;

    .line 93
    iput-object p3, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSmsHandler$SmsMessage;->localuri:Ljava/lang/String;

    .line 94
    iput-object p4, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSmsHandler$SmsMessage;->contentType:Ljava/lang/String;

    .line 95
    iput-object p5, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSmsHandler$SmsMessage;->pdu:[B

    .line 96
    iput p6, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSmsHandler$SmsMessage;->msgId:I

    .line 97
    iput-boolean p7, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSmsHandler$SmsMessage;->isDeliveryReport:Z

    .line 98
    iput-object p8, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSmsHandler$SmsMessage;->callId:Ljava/lang/String;

    .line 99
    iput-boolean p9, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSmsHandler$SmsMessage;->isEmergency:Z

    .line 100
    iput-wide p10, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSmsHandler$SmsMessage;->sentTime:J

    .line 101
    iput-boolean p12, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSmsHandler$SmsMessage;->isNTN:Z

    return-void
.end method
