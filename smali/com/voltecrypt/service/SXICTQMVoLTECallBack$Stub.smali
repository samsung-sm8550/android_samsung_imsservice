.class public abstract Lcom/voltecrypt/service/SXICTQMVoLTECallBack$Stub;
.super Landroid/os/Binder;
.source "SXICTQMVoLTECallBack.java"

# interfaces
.implements Lcom/voltecrypt/service/SXICTQMVoLTECallBack;


# direct methods
.method public static asInterface(Landroid/os/IBinder;)Lcom/voltecrypt/service/SXICTQMVoLTECallBack;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 96
    :cond_0
    const-string v0, "com.voltecrypt.service.SXICTQMVoLTECallBack"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 97
    instance-of v1, v0, Lcom/voltecrypt/service/SXICTQMVoLTECallBack;

    if-eqz v1, :cond_1

    .line 98
    check-cast v0, Lcom/voltecrypt/service/SXICTQMVoLTECallBack;

    return-object v0

    .line 100
    :cond_1
    new-instance v0, Lcom/voltecrypt/service/SXICTQMVoLTECallBack$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/voltecrypt/service/SXICTQMVoLTECallBack$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
