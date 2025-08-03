.class public Lcom/sec/internal/ims/servicemodules/im/strategy/KtUPStrategy;
.super Lcom/sec/internal/ims/servicemodules/im/strategy/SecUPStrategy;
.source "KtUPStrategy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "KtUPStrategy"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/strategy/SecUPStrategy;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public isBMode(Z)Z
    .locals 6

    .line 22
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultMnoStrategy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "two_register"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 23
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/strategy/KtUPStrategy;->TAG:Ljava/lang/String;

    iget v3, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultMnoStrategy;->mPhoneId:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isKtTwoPhoneServiceRegistered: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    if-ne v0, v1, :cond_1

    if-eqz p1, :cond_1

    return v1

    .line 31
    :cond_1
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultMnoStrategy;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    .line 32
    invoke-static {p1}, Lcom/sec/ims/extensions/Extensions$UserManagerRef;->getUsers(Landroid/os/UserManager;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_3

    move v0, v2

    .line 35
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 36
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 37
    invoke-static {v3}, Lcom/sec/ims/extensions/Extensions$UserInfo;->isBMode(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 39
    invoke-static {v3}, Lcom/sec/ims/extensions/Extensions$UserInfo;->getUserId(Ljava/lang/Object;)I

    move-result v3

    invoke-static {}, Lcom/sec/ims/extensions/Extensions$ActivityManager;->getCurrentUser()I

    move-result v4

    if-ne v3, v4, :cond_2

    .line 40
    sget-object p1, Lcom/sec/internal/ims/servicemodules/im/strategy/KtUPStrategy;->TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultMnoStrategy;->mPhoneId:I

    const-string v0, "Current user set BMode."

    invoke-static {p1, p0, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return v2
.end method
