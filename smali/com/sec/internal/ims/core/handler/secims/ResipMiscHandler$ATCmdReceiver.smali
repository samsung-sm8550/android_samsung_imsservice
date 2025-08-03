.class Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler$ATCmdReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ResipMiscHandler.java"


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;


# direct methods
.method private constructor <init>(Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler$ATCmdReceiver;->this$0:Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler$ATCmdReceiver-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler$ATCmdReceiver;-><init>(Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    if-eqz p1, :cond_a

    if-nez p2, :cond_0

    goto/16 :goto_2

    .line 83
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 84
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Receive Action "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;->-$$Nest$sfgetATCMD_INTENT()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 87
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;->-$$Nest$sfgetATCMD_COMMAND_EXTRA()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 88
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Factory intent doesn\'t have ["

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;->-$$Nest$sfgetATCMD_COMMAND_EXTRA()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "]"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 92
    :cond_1
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;->-$$Nest$sfgetATCMD_COMMAND_EXTRA()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 93
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 94
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Factory intent doesn\'t have value"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 98
    :cond_2
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object p2

    .line 99
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Factory intent command "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;->-$$Nest$sfgetATCMD_CHECK_SMS_FORMAT()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    .line 105
    sget-object p1, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne p2, p1, :cond_3

    .line 106
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler$ATCmdReceiver;->this$0:Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;

    invoke-static {p1}, Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;->-$$Nest$fgetmImsFramework(Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;)Lcom/sec/internal/interfaces/ims/IImsFramework;

    move-result-object p1

    const-string p2, "SMS_SETTING"

    invoke-interface {p1, p2, v1}, Lcom/sec/internal/interfaces/ims/IImsFramework;->isDefaultDmValue(Ljava/lang/String;I)Z

    move-result v2

    .line 109
    :cond_3
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;->-$$Nest$sfgetATCMD_IMSTEST_RESULT_PREFIX()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 110
    :cond_4
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;->-$$Nest$sfgetATCMD_CHECK_OMADM()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v3, "OMADM_VALUE"

    if-eqz v0, :cond_6

    .line 111
    sget-object p1, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne p2, p1, :cond_5

    .line 112
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler$ATCmdReceiver;->this$0:Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;

    invoke-static {p1}, Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;->-$$Nest$fgetmImsFramework(Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;)Lcom/sec/internal/interfaces/ims/IImsFramework;

    move-result-object p1

    invoke-interface {p1, v3, v1}, Lcom/sec/internal/interfaces/ims/IImsFramework;->isDefaultDmValue(Ljava/lang/String;I)Z

    move-result v2

    .line 115
    :cond_5
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;->-$$Nest$sfgetATCMD_VOLTECON_RESULT_PREFIX()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 116
    :cond_6
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;->-$$Nest$sfgetATCMD_RESET_OMADM()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 117
    sget-object p1, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne p2, p1, :cond_7

    .line 118
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler$ATCmdReceiver;->this$0:Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;

    invoke-static {p1}, Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;->-$$Nest$fgetmImsFramework(Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;)Lcom/sec/internal/interfaces/ims/IImsFramework;

    move-result-object p1

    invoke-interface {p1, v3, v1}, Lcom/sec/internal/interfaces/ims/IImsFramework;->setDefaultDmValue(Ljava/lang/String;I)Z

    move-result v2

    .line 121
    :cond_7
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;->-$$Nest$sfgetATCMD_VOLTECON_RESULT_PREFIX()Ljava/lang/String;

    move-result-object p1

    :goto_0
    if-eqz v2, :cond_8

    .line 127
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;->-$$Nest$sfgetATCMD_RESULT_OK()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 129
    :cond_8
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;->-$$Nest$sfgetATCMD_RESULT_NG()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 132
    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;->-$$Nest$sfgetATCMD_RESULT_SUFFIX()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 134
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler$ATCmdReceiver;->this$0:Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;

    invoke-static {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;->-$$Nest$msendATCmdResponse(Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;Ljava/lang/String;)V

    nop

    :cond_9
    return-void

    .line 79
    :cond_a
    :goto_2
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Wrong Event Ignore."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
