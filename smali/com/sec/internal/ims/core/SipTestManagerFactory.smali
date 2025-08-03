.class public Lcom/sec/internal/ims/core/SipTestManagerFactory;
.super Ljava/lang/Object;
.source "SipTestManagerFactory.java"


# static fields
.field private static mSipTestManager:Lcom/sec/internal/interfaces/ims/core/ISipTestManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createSipTestManager(Landroid/content/Context;)V
    .locals 2

    .line 18
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "userdebug"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 20
    :cond_0
    const-string/jumbo v0, "persist.sip.test.enable"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_1

    .line 23
    :try_start_0
    new-instance v1, Lcom/sec/internal/ims/core/SipTestManager;

    invoke-direct {v1, p0, v0}, Lcom/sec/internal/ims/core/SipTestManager;-><init>(Landroid/content/Context;I)V

    sput-object v1, Lcom/sec/internal/ims/core/SipTestManagerFactory;->mSipTestManager:Lcom/sec/internal/interfaces/ims/core/ISipTestManager;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 25
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static getSipTestManager()Lcom/sec/internal/interfaces/ims/core/ISipTestManager;
    .locals 1

    .line 15
    sget-object v0, Lcom/sec/internal/ims/core/SipTestManagerFactory;->mSipTestManager:Lcom/sec/internal/interfaces/ims/core/ISipTestManager;

    return-object v0
.end method

.method public static isSipTest()Z
    .locals 1

    .line 13
    sget-object v0, Lcom/sec/internal/ims/core/SipTestManagerFactory;->mSipTestManager:Lcom/sec/internal/interfaces/ims/core/ISipTestManager;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
