.class Lcom/voltecrypt/service/SXICTQMVoLTECryptService$Stub$Proxy;
.super Ljava/lang/Object;
.source "SXICTQMVoLTECryptService.java"

# interfaces
.implements Lcom/voltecrypt/service/SXICTQMVoLTECryptService;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 225
    iput-object p1, p0, Lcom/voltecrypt/service/SXICTQMVoLTECryptService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 229
    iget-object p0, p0, Lcom/voltecrypt/service/SXICTQMVoLTECryptService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method
