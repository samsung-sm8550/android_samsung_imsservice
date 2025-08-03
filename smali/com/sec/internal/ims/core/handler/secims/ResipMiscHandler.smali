.class public Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;
.super Lcom/sec/internal/ims/core/handler/MiscHandler;
.source "ResipMiscHandler.java"

# interfaces
.implements Lcom/sec/internal/ims/core/handler/secims/StackIF$MiscEventListener;


# static fields
.field private static ATCMD_CHECK_OMADM:Ljava/lang/String; = "AT+VOLTECON=1,0,1,0"

.field private static ATCMD_CHECK_SMS_FORMAT:Ljava/lang/String; = "AT+IMSSTEST=0,0,0"

.field private static ATCMD_COMMAND_EXTRA:Ljava/lang/String; = "command"

.field private static ATCMD_IMSTEST_RESULT_PREFIX:Ljava/lang/String; = "\r\n+IMSSTEST:0,"

.field private static ATCMD_INTENT:Ljava/lang/String; = "com.sec.factory.RECEIVED_FROM_RIL"

.field private static ATCMD_RESET_OMADM:Ljava/lang/String; = "AT+VOLTECON=0,0,0,0"

.field private static ATCMD_RESULT_ACTION:Ljava/lang/String; = "com.sec.factory.SEND_TO_RIL"

.field private static ATCMD_RESULT_KEY:Ljava/lang/String; = "message"

.field private static ATCMD_RESULT_NG:Ljava/lang/String; = "NG"

.field private static ATCMD_RESULT_OK:Ljava/lang/String; = "OK"

.field private static ATCMD_RESULT_SUFFIX:Ljava/lang/String; = "\r\n\r\nOK\r\n"

.field private static ATCMD_VOLTECON_RESULT_PREFIX:Ljava/lang/String; = "\r\n+VOLTECON:0,"

.field private static final EVENT_ALARM_CANCELLED:I = 0x2

.field private static final EVENT_ALARM_FIRED:I = 0x3

.field private static final EVENT_ALARM_REQUESTED:I = 0x1

.field private static final EVENT_ECHOLOCATE_RECEIVED:I = 0x4

.field private static final EVENT_XQ_MTRIP_RECEIVED:I = 0x5

.field private static final LOG_TAG:Ljava/lang/String; = "ResipMiscHandler"


# instance fields
.field private mAlarmManager:Lcom/sec/internal/helper/PreciseAlarmManager;

.field private final mAlarmMessageList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private mAtCmdReceiver:Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler$ATCmdReceiver;

.field private final mContext:Landroid/content/Context;

.field private final mEcholocateEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private final mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

.field private final mStackIF:Lcom/sec/internal/ims/core/handler/secims/StackIF;

.field private final mXqMtripEventRegistrants:Lcom/sec/internal/helper/RegistrantList;


# direct methods
.method static bridge synthetic -$$Nest$fgetmImsFramework(Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;)Lcom/sec/internal/interfaces/ims/IImsFramework;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$msendATCmdResponse(Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;->sendATCmdResponse(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetATCMD_CHECK_OMADM()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;->ATCMD_CHECK_OMADM:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetATCMD_CHECK_SMS_FORMAT()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;->ATCMD_CHECK_SMS_FORMAT:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetATCMD_COMMAND_EXTRA()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;->ATCMD_COMMAND_EXTRA:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetATCMD_IMSTEST_RESULT_PREFIX()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;->ATCMD_IMSTEST_RESULT_PREFIX:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetATCMD_INTENT()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;->ATCMD_INTENT:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetATCMD_RESET_OMADM()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;->ATCMD_RESET_OMADM:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetATCMD_RESULT_NG()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;->ATCMD_RESULT_NG:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetATCMD_RESULT_OK()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;->ATCMD_RESULT_OK:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetATCMD_RESULT_SUFFIX()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;->ATCMD_RESULT_SUFFIX:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetATCMD_VOLTECON_RESULT_PREFIX()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;->ATCMD_VOLTECON_RESULT_PREFIX:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetLOG_TAG()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method protected constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/IImsFramework;)V
    .locals 1

    .line 230
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/MiscHandler;-><init>(Landroid/os/Looper;)V

    .line 52
    new-instance p1, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {p1}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;->mEcholocateEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 53
    new-instance p1, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {p1}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;->mXqMtripEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 71
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;->mAlarmMessageList:Landroid/util/SparseArray;

    const/4 p1, 0x0

    .line 72
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;->mAlarmManager:Lcom/sec/internal/helper/PreciseAlarmManager;

    .line 73
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;->mAtCmdReceiver:Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler$ATCmdReceiver;

    .line 231
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->getInstance()Lcom/sec/internal/ims/core/handler/secims/StackIF;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;->mStackIF:Lcom/sec/internal/ims/core/handler/secims/StackIF;

    .line 232
    iput-object p2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;->mContext:Landroid/content/Context;

    .line 233
    iput-object p3, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    .line 234
    invoke-virtual {v0, p0}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->registerMiscListener(Lcom/sec/internal/ims/core/handler/secims/StackIF$MiscEventListener;)V

    const/4 p3, 0x4

    .line 235
    invoke-virtual {v0, p0, p3, p1}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->registerEcholocateEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    const/4 p3, 0x5

    .line 236
    invoke-virtual {v0, p0, p3, p1}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->registerXqMtrip(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 238
    invoke-static {p2}, Lcom/sec/internal/helper/PreciseAlarmManager;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/PreciseAlarmManager;

    move-result-object p3

    iput-object p3, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;->mAlarmManager:Lcom/sec/internal/helper/PreciseAlarmManager;

    .line 243
    new-instance p3, Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler$ATCmdReceiver;

    invoke-direct {p3, p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler$ATCmdReceiver;-><init>(Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler$ATCmdReceiver-IA;)V

    iput-object p3, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;->mAtCmdReceiver:Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler$ATCmdReceiver;

    .line 244
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 245
    sget-object p3, Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;->ATCMD_INTENT:Ljava/lang/String;

    invoke-virtual {p1, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 247
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;->mAtCmdReceiver:Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler$ATCmdReceiver;

    const/4 p3, 0x2

    invoke-virtual {p2, p0, p1, p3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method

.method private sendATCmdResponse(Ljava/lang/String;)V
    .locals 3

    .line 292
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "send AT CMD response : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;->ATCMD_RESULT_ACTION:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 294
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 295
    sget-object v2, Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;->ATCMD_RESULT_KEY:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 298
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11

    .line 142
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eq v0, v2, :cond_a

    const/4 v2, 0x2

    if-eq v0, v2, :cond_8

    if-eq v0, v1, :cond_7

    const/4 v1, 0x4

    if-eq v0, v1, :cond_4

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 223
    invoke-super {p0, p1}, Lcom/sec/internal/ims/core/handler/MiscHandler;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_3

    .line 205
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "XqMessage"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    .line 207
    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/XqMessage;

    .line 208
    new-instance v0, Lcom/sec/internal/ims/xq/att/data/XqEvent;

    invoke-direct {v0}, Lcom/sec/internal/ims/xq/att/data/XqEvent;-><init>()V

    .line 209
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/XqMessage;->mtrip()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/xq/att/data/XqEvent;->setXqMtrips(I)V

    const/4 v1, 0x0

    .line 211
    :goto_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/XqMessage;->mContentLength()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 212
    invoke-virtual {p1, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/XqMessage;->mContent(I)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/XqMessage_/XqContent;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 214
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/XqMessage_/XqContent;->type()I

    move-result v3

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/XqMessage_/XqContent;->intVal()J

    move-result-wide v4

    long-to-int v4, v4

    .line 215
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/XqMessage_/XqContent;->strVal()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/XqMessage_/XqContent;->strVal()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    const-string v2, ""

    .line 214
    :goto_1
    invoke-virtual {v0, v3, v4, v2}, Lcom/sec/internal/ims/xq/att/data/XqEvent;->setContent(IILjava/lang/String;)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 219
    :cond_3
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;->mXqMtripEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 179
    :cond_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    .line 180
    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EcholocateMsg;

    .line 181
    new-instance v10, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent;

    invoke-direct {v10}, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent;-><init>()V

    .line 182
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EcholocateMsg;->msgtype()I

    move-result v0

    if-nez v0, :cond_5

    .line 183
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateType;->signalMsg:Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateType;

    invoke-virtual {v10, v0}, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent;->setType(Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateType;)V

    .line 185
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EcholocateMsg;->echolocateSignalData()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EcholocateMsg_/EcholocateSignalMsg;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 187
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EcholocateMsg_/EcholocateSignalMsg;->origin()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EcholocateMsg_/EcholocateSignalMsg;->line1()Ljava/lang/String;

    move-result-object v2

    .line 188
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EcholocateMsg_/EcholocateSignalMsg;->callid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EcholocateMsg_/EcholocateSignalMsg;->cseq()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EcholocateMsg_/EcholocateSignalMsg;->sessionid()Ljava/lang/String;

    move-result-object v5

    .line 189
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EcholocateMsg_/EcholocateSignalMsg;->reason()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EcholocateMsg_/EcholocateSignalMsg;->contents()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EcholocateMsg_/EcholocateSignalMsg;->peernumber()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EcholocateMsg_/EcholocateSignalMsg;->isEpdgCall()Z

    move-result v9

    move-object v0, v10

    .line 187
    invoke-virtual/range {v0 .. v9}, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent;->setSignalData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_2

    .line 192
    :cond_5
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateType;->rtpMsg:Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateType;

    invoke-virtual {v10, v0}, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent;->setType(Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateType;)V

    .line 194
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EcholocateMsg;->echolocateRtpData()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EcholocateMsg_/EcholocateRtpMsg;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 196
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EcholocateMsg_/EcholocateRtpMsg;->dir()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EcholocateMsg_/EcholocateRtpMsg;->id()Ljava/lang/String;

    move-result-object v2

    .line 197
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EcholocateMsg_/EcholocateRtpMsg;->lossrate()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EcholocateMsg_/EcholocateRtpMsg;->delay()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EcholocateMsg_/EcholocateRtpMsg;->jitter()Ljava/lang/String;

    move-result-object v5

    .line 198
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EcholocateMsg_/EcholocateRtpMsg;->measuredperiod()Ljava/lang/String;

    move-result-object v6

    move-object v0, v10

    .line 196
    invoke-virtual/range {v0 .. v6}, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent;->setRtpData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    :cond_6
    :goto_2
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;->mEcholocateEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, v10}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 170
    :cond_7
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 172
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ALARM_WAKE_UP id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;->mStackIF:Lcom/sec/internal/ims/core/handler/secims/StackIF;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendAlarmWakeUp(I)V

    .line 174
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;->mAlarmMessageList:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_3

    .line 158
    :cond_8
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 159
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;->mAlarmMessageList:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Message;

    if-nez v0, :cond_9

    .line 161
    sget-object p0, Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not reigstered id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 163
    :cond_9
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;->mAlarmManager:Lcom/sec/internal/helper/PreciseAlarmManager;

    invoke-virtual {v1, v0}, Lcom/sec/internal/helper/PreciseAlarmManager;->removeMessage(Landroid/os/Message;)V

    .line 164
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;->mAlarmMessageList:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_3

    .line 144
    :cond_a
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 145
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 146
    iget-object v4, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;->mAlarmMessageList:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_b

    .line 147
    sget-object p0, Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Already reigstered id "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_b
    xor-int/2addr v2, v3

    .line 151
    invoke-virtual {p0, v1, v0, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 152
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;->mAlarmMessageList:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 154
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;->mAlarmManager:Lcom/sec/internal/helper/PreciseAlarmManager;

    iget p1, p1, Landroid/os/Message;->arg2:I

    int-to-long v2, p1

    invoke-virtual {p0, v1, v2, v3}, Lcom/sec/internal/helper/PreciseAlarmManager;->sendMessageDelayed(Landroid/os/Message;J)Lcom/sec/internal/helper/DelayedMessage;

    :goto_3
    return-void
.end method

.method public init()V
    .locals 0

    .line 252
    invoke-super {p0}, Lcom/sec/internal/ims/core/handler/BaseHandler;->init()V

    return-void
.end method

.method public onAlarmCancelled(I)V
    .locals 3

    .line 287
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAlarmCancelled: id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 288
    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onAlarmRequested(IIZ)V
    .locals 3

    .line 281
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAlarmRequested: delay="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " isKeepAlive= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public registerForEcholocateEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    .line 257
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "registerForEcholocateEvent:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;->mEcholocateEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/helper/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForXqMtripEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    .line 270
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;->mXqMtripEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/helper/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public unregisterForEcholocateEvent(Landroid/os/Handler;)V
    .locals 2

    .line 263
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "unregisterForEcholocateEvent:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;->mEcholocateEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForXqMtripEvent(Landroid/os/Handler;)V
    .locals 0

    .line 276
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;->mXqMtripEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method
