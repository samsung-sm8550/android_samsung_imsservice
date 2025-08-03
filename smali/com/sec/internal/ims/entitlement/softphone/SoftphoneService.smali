.class public Lcom/sec/internal/ims/entitlement/softphone/SoftphoneService;
.super Landroid/app/Service;
.source "SoftphoneService.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mBinder:Landroid/os/IBinder;

.field private mService:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    const-class v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneService;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneService;->mBinder:Landroid/os/IBinder;

    .line 17
    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneService;->mService:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;

    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 44
    new-instance p1, Lcom/sec/internal/log/IndentingPrintWriter;

    const-string p3, "  "

    invoke-direct {p1, p2, p3}, Lcom/sec/internal/log/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 45
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneService;->mService:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->dump(Lcom/sec/internal/log/IndentingPrintWriter;)V

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .line 38
    sget-object p1, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneService;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v0, "onBind"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneService;->mBinder:Landroid/os/IBinder;

    return-object p0
.end method

.method public onCreate()V
    .locals 2

    .line 21
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 22
    sget-object v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneService;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    new-instance v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneService;->mService:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;

    .line 24
    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneService;->mBinder:Landroid/os/IBinder;

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    .line 29
    sget-object p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneService;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onStartCommand(): Received start id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", flags: "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", Intent: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method
