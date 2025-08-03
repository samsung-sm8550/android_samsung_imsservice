.class Lcom/sec/internal/ims/rcs/RcsPolicyManager$1;
.super Landroid/database/ContentObserver;
.source "RcsPolicyManager.java"


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/rcs/RcsPolicyManager;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/rcs/RcsPolicyManager;Landroid/os/Handler;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/sec/internal/ims/rcs/RcsPolicyManager$1;->this$0:Lcom/sec/internal/ims/rcs/RcsPolicyManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 2

    .line 101
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result p1

    .line 102
    invoke-virtual {p2}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 103
    invoke-static {p2}, Lcom/sec/internal/helper/UriUtil;->getSimSlotFromUri(Landroid/net/Uri;)I

    move-result p1

    .line 106
    :cond_0
    invoke-static {}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->-$$Nest$sfgetsUriMatcher()Landroid/content/UriMatcher;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p2

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onChange: match: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RcsPolicyMgr"

    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 118
    :pswitch_0
    iget-object p0, p0, Lcom/sec/internal/ims/rcs/RcsPolicyManager$1;->this$0:Lcom/sec/internal/ims/rcs/RcsPolicyManager;

    invoke-static {p0, p1}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->-$$Nest$mupdateRcsStrategy(Lcom/sec/internal/ims/rcs/RcsPolicyManager;I)V

    goto :goto_0

    .line 113
    :pswitch_1
    iget-object p0, p0, Lcom/sec/internal/ims/rcs/RcsPolicyManager$1;->this$0:Lcom/sec/internal/ims/rcs/RcsPolicyManager;

    invoke-static {p0}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->-$$Nest$monRCSAllowedChangedbyMDM(Lcom/sec/internal/ims/rcs/RcsPolicyManager;)V

    goto :goto_0

    .line 110
    :pswitch_2
    iget-object p0, p0, Lcom/sec/internal/ims/rcs/RcsPolicyManager$1;->this$0:Lcom/sec/internal/ims/rcs/RcsPolicyManager;

    invoke-static {p0, p1}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->-$$Nest$monRcsRoamingPrefChanged(Lcom/sec/internal/ims/rcs/RcsPolicyManager;I)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
