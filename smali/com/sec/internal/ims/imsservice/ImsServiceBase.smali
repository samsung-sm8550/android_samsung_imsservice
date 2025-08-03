.class public abstract Lcom/sec/internal/ims/imsservice/ImsServiceBase;
.super Landroid/app/Service;
.source "ImsServiceBase.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field protected mBinder:Lcom/sec/ims/IImsService$Stub;

.field protected mSemBinder:Lcom/samsung/android/ims/SemImsService$Stub;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    const-class v0, Lcom/sec/internal/ims/imsservice/ImsServiceBase;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceBase;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceBase;->mBinder:Lcom/sec/ims/IImsService$Stub;

    .line 29
    iput-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceBase;->mSemBinder:Lcom/samsung/android/ims/SemImsService$Stub;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 61
    invoke-static {}, Lcom/sec/ims/extensions/Extensions$UserHandle;->myUserId()I

    move-result p1

    if-eqz p1, :cond_0

    .line 62
    sget-object p0, Lcom/sec/internal/ims/imsservice/ImsServiceBase;->LOG_TAG:Ljava/lang/String;

    const-string p1, "Do not allow bind on non-system user"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 65
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceBase;->mBinder:Lcom/sec/ims/IImsService$Stub;

    return-object p0
.end method

.method public onCreate()V
    .locals 2

    .line 33
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 36
    :try_start_0
    invoke-static {}, Lcom/sec/ims/extensions/Extensions$UserHandle;->myUserId()I

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceBase;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Do not initialize on non-system user"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 42
    :catch_0
    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceBase;->LOG_TAG:Ljava/lang/String;

    const-string v1, "IllegalStateException occurred"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceBase;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "onCreate(): "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    invoke-static {}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getInstance()Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceBase;->mBinder:Lcom/sec/ims/IImsService$Stub;

    .line 48
    sget v0, Landroid/os/Build$VERSION;->SEM_INT:I

    const/16 v1, 0xa9c

    if-lt v0, v1, :cond_1

    .line 49
    invoke-static {}, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->getInstance()Lcom/sec/internal/ims/imsservice/SemImsServiceStub;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceBase;->mSemBinder:Lcom/samsung/android/ims/SemImsService$Stub;

    :cond_1
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method
