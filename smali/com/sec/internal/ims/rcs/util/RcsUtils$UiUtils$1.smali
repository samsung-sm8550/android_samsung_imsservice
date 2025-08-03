.class Lcom/sec/internal/ims/rcs/util/RcsUtils$UiUtils$1;
.super Ljava/lang/Object;
.source "RcsUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$isRoaming:Z

.field final synthetic val$pref:I


# direct methods
.method constructor <init>(IZLandroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 363
    iput p1, p0, Lcom/sec/internal/ims/rcs/util/RcsUtils$UiUtils$1;->val$pref:I

    iput-boolean p2, p0, Lcom/sec/internal/ims/rcs/util/RcsUtils$UiUtils$1;->val$isRoaming:Z

    iput-object p3, p0, Lcom/sec/internal/ims/rcs/util/RcsUtils$UiUtils$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 366
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 368
    invoke-static {}, Lcom/sec/internal/ims/rcs/util/RcsUtils;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "User preference for RCS PDN: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/sec/internal/ims/rcs/util/RcsUtils$UiUtils$1;->val$pref:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " (roaming: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/sec/internal/ims/rcs/util/RcsUtils$UiUtils$1;->val$isRoaming:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result p1

    .line 371
    iget-object p2, p0, Lcom/sec/internal/ims/rcs/util/RcsUtils$UiUtils$1;->val$context:Landroid/content/Context;

    iget-boolean v0, p0, Lcom/sec/internal/ims/rcs/util/RcsUtils$UiUtils$1;->val$isRoaming:Z

    iget v1, p0, Lcom/sec/internal/ims/rcs/util/RcsUtils$UiUtils$1;->val$pref:I

    invoke-static {p2, p1, v0, v1}, Lcom/sec/internal/ims/rcs/util/RcsUtils$UiUtils;->-$$Nest$smsetRcsPrefValue(Landroid/content/Context;IZI)V

    .line 372
    iget p0, p0, Lcom/sec/internal/ims/rcs/util/RcsUtils$UiUtils$1;->val$pref:I

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    .line 373
    invoke-static {p0}, Lcom/sec/internal/ims/rcs/util/RcsUtils$UiUtils;->-$$Nest$sfputmHasRcsUserConsent(Z)V

    .line 374
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object p0

    .line 375
    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->requestTryRegister(I)V

    :cond_0
    return-void
.end method
