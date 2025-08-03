.class public abstract Lcom/samsung/android/cmcp2phelper/transport/CphManager;
.super Ljava/lang/Object;
.source "CphManager.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String;

.field private static final executor:Ljava/util/concurrent/ExecutorService;


# instance fields
.field context:Landroid/content/Context;

.field ipType:Lcom/samsung/android/cmcp2phelper/PreferredIpType;

.field mLogHandler:Landroid/os/Handler;

.field mMessageId:I

.field serviceInfo:Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cmcp2phelper/2.1.06/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/cmcp2phelper/transport/CphManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/cmcp2phelper/transport/CphManager;->LOG_TAG:Ljava/lang/String;

    const/16 v0, 0x10

    .line 20
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/cmcp2phelper/transport/CphManager;->executor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;Lcom/samsung/android/cmcp2phelper/PreferredIpType;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/samsung/android/cmcp2phelper/transport/CphManager;->context:Landroid/content/Context;

    .line 33
    iput-object p2, p0, Lcom/samsung/android/cmcp2phelper/transport/CphManager;->serviceInfo:Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;

    .line 34
    iput-object p3, p0, Lcom/samsung/android/cmcp2phelper/transport/CphManager;->ipType:Lcom/samsung/android/cmcp2phelper/PreferredIpType;

    return-void
.end method

.method public static execute(Ljava/lang/Runnable;)V
    .locals 1

    .line 39
    :try_start_0
    sget-object v0, Lcom/samsung/android/cmcp2phelper/transport/CphManager;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method protected getNextMessageID()I
    .locals 3

    .line 57
    iget v0, p0, Lcom/samsung/android/cmcp2phelper/transport/CphManager;->mMessageId:I

    const/4 v1, 0x1

    const v2, 0x7fffffff

    if-le v2, v0, :cond_0

    add-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/cmcp2phelper/transport/CphManager;->mMessageId:I

    goto :goto_0

    .line 58
    :cond_0
    iput v1, p0, Lcom/samsung/android/cmcp2phelper/transport/CphManager;->mMessageId:I

    .line 60
    :goto_0
    iget p0, p0, Lcom/samsung/android/cmcp2phelper/transport/CphManager;->mMessageId:I

    return p0
.end method

.method protected getSendMessageSessionId()I
    .locals 0

    .line 64
    invoke-static {}, Lcom/samsung/android/cmcp2phelper/data/CphDeviceManager;->getSessionId()I

    move-result p0

    return p0
.end method
