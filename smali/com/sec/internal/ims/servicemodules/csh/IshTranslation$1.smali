.class Lcom/sec/internal/ims/servicemodules/csh/IshTranslation$1;
.super Landroid/content/BroadcastReceiver;
.source "IshTranslation.java"


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/csh/IshTranslation$1;->this$0:Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 54
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 55
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received intent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    const-string v0, "com.sec.rcs.mediatransfer.ish.action.SHARE_CONTENT"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/csh/IshTranslation$1;->this$0:Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;

    invoke-static {p0, p2}, Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;->-$$Nest$mrequestNewShare(Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;Landroid/content/Intent;)V

    goto :goto_0

    .line 58
    :cond_0
    const-string v0, "com.sec.rcs.mediatransfer.ish.action.SHARE_ACCEPT"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 59
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/csh/IshTranslation$1;->this$0:Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;

    invoke-static {p0, p2}, Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;->-$$Nest$mrequestAcceptShare(Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;Landroid/content/Intent;)V

    goto :goto_0

    .line 60
    :cond_1
    const-string v0, "com.sec.rcs.mediatransfer.ish.action.SHARE_CANCEL"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 61
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/csh/IshTranslation$1;->this$0:Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;

    invoke-static {p0, p2}, Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;->-$$Nest$mrequestCancelShare(Lcom/sec/internal/ims/servicemodules/csh/IshTranslation;Landroid/content/Intent;)V

    :cond_2
    :goto_0
    return-void
.end method
