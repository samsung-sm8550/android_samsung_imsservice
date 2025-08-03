.class public Lcom/sec/internal/imsphone/ImsUtImpl;
.super Lcom/android/ims/internal/IImsUt$Stub;
.source "ImsUtImpl.java"


# instance fields
.field protected mListener:Lcom/android/ims/internal/IImsUtListener;

.field private mPhoneId:I

.field private mUtEventListener:Lcom/sec/ims/ss/IImsUtEventListener;

.field private mUtService:Lcom/sec/internal/interfaces/ims/servicemodules/ss/IUtServiceModule;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 19
    invoke-direct {p0}, Lcom/android/ims/internal/IImsUt$Stub;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcom/sec/internal/imsphone/ImsUtImpl;->mUtService:Lcom/sec/internal/interfaces/ims/servicemodules/ss/IUtServiceModule;

    .line 16
    iput-object v0, p0, Lcom/sec/internal/imsphone/ImsUtImpl;->mListener:Lcom/android/ims/internal/IImsUtListener;

    .line 17
    iput-object v0, p0, Lcom/sec/internal/imsphone/ImsUtImpl;->mUtEventListener:Lcom/sec/ims/ss/IImsUtEventListener;

    .line 20
    iput p1, p0, Lcom/sec/internal/imsphone/ImsUtImpl;->mPhoneId:I

    .line 21
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getUtServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/ss/IUtServiceModule;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/imsphone/ImsUtImpl;->mUtService:Lcom/sec/internal/interfaces/ims/servicemodules/ss/IUtServiceModule;

    .line 22
    new-instance p1, Lcom/sec/internal/imsphone/ImsUtEventListener;

    invoke-direct {p1, p0}, Lcom/sec/internal/imsphone/ImsUtEventListener;-><init>(Lcom/sec/internal/imsphone/ImsUtImpl;)V

    iput-object p1, p0, Lcom/sec/internal/imsphone/ImsUtImpl;->mUtEventListener:Lcom/sec/ims/ss/IImsUtEventListener;

    .line 23
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsUtImpl;->mUtService:Lcom/sec/internal/interfaces/ims/servicemodules/ss/IUtServiceModule;

    if-eqz v0, :cond_0

    .line 24
    iget p0, p0, Lcom/sec/internal/imsphone/ImsUtImpl;->mPhoneId:I

    invoke-interface {v0, p0, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/ss/IUtServiceModule;->registerForUtEvent(ILcom/sec/ims/ss/IImsUtEventListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public isUssdEnabled()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 236
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsUtImpl;->mUtService:Lcom/sec/internal/interfaces/ims/servicemodules/ss/IUtServiceModule;

    iget p0, p0, Lcom/sec/internal/imsphone/ImsUtImpl;->mPhoneId:I

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/servicemodules/ss/IUtServiceModule;->isUssdEnabled(I)Z

    move-result p0

    return p0
.end method

.method public queryCLIP()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsUtImpl;->mUtService:Lcom/sec/internal/interfaces/ims/servicemodules/ss/IUtServiceModule;

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 88
    :cond_0
    iget p0, p0, Lcom/sec/internal/imsphone/ImsUtImpl;->mPhoneId:I

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/servicemodules/ss/IUtServiceModule;->queryCLIP(I)I

    move-result p0

    return p0
.end method

.method public queryCLIR()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsUtImpl;->mUtService:Lcom/sec/internal/interfaces/ims/servicemodules/ss/IUtServiceModule;

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 77
    :cond_0
    iget p0, p0, Lcom/sec/internal/imsphone/ImsUtImpl;->mPhoneId:I

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/servicemodules/ss/IUtServiceModule;->queryCLIR(I)I

    move-result p0

    return p0
.end method

.method public queryCOLP()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 107
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsUtImpl;->mUtService:Lcom/sec/internal/interfaces/ims/servicemodules/ss/IUtServiceModule;

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 110
    :cond_0
    iget p0, p0, Lcom/sec/internal/imsphone/ImsUtImpl;->mPhoneId:I

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/servicemodules/ss/IUtServiceModule;->queryCOLP(I)I

    move-result p0

    return p0
.end method

.method public queryCOLR()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsUtImpl;->mUtService:Lcom/sec/internal/interfaces/ims/servicemodules/ss/IUtServiceModule;

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 99
    :cond_0
    iget p0, p0, Lcom/sec/internal/imsphone/ImsUtImpl;->mPhoneId:I

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/servicemodules/ss/IUtServiceModule;->queryCOLR(I)I

    move-result p0

    return p0
.end method

.method public queryCallBarring(I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsUtImpl;->mUtService:Lcom/sec/internal/interfaces/ims/servicemodules/ss/IUtServiceModule;

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 44
    :cond_0
    iget p0, p0, Lcom/sec/internal/imsphone/ImsUtImpl;->mPhoneId:I

    const/16 v1, 0xff

    invoke-interface {v0, p0, p1, v1}, Lcom/sec/internal/interfaces/ims/servicemodules/ss/IUtServiceModule;->queryCallBarring(III)I

    move-result p0

    return p0
.end method

.method public queryCallBarringForServiceClass(II)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 220
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsUtImpl;->mUtService:Lcom/sec/internal/interfaces/ims/servicemodules/ss/IUtServiceModule;

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 223
    :cond_0
    iget p0, p0, Lcom/sec/internal/imsphone/ImsUtImpl;->mPhoneId:I

    invoke-interface {v0, p0, p1, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/ss/IUtServiceModule;->queryCallBarring(III)I

    move-result p0

    return p0
.end method

.method public queryCallForward(ILjava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsUtImpl;->mUtService:Lcom/sec/internal/interfaces/ims/servicemodules/ss/IUtServiceModule;

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 55
    :cond_0
    iget p0, p0, Lcom/sec/internal/imsphone/ImsUtImpl;->mPhoneId:I

    invoke-interface {v0, p0, p1, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/ss/IUtServiceModule;->queryCallForward(IILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public queryCallWaiting()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsUtImpl;->mUtService:Lcom/sec/internal/interfaces/ims/servicemodules/ss/IUtServiceModule;

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 66
    :cond_0
    iget p0, p0, Lcom/sec/internal/imsphone/ImsUtImpl;->mPhoneId:I

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/servicemodules/ss/IUtServiceModule;->queryCallWaiting(I)I

    move-result p0

    return p0
.end method

.method public setListener(Lcom/android/ims/internal/IImsUtListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 215
    iput-object p1, p0, Lcom/sec/internal/imsphone/ImsUtImpl;->mListener:Lcom/android/ims/internal/IImsUtListener;

    return-void
.end method

.method public transact(Landroid/os/Bundle;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    const/4 p0, -0x1

    return p0
.end method

.method public updateCLIP(Z)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 182
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsUtImpl;->mUtService:Lcom/sec/internal/interfaces/ims/servicemodules/ss/IUtServiceModule;

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 185
    :cond_0
    iget p0, p0, Lcom/sec/internal/imsphone/ImsUtImpl;->mPhoneId:I

    invoke-interface {v0, p0, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/ss/IUtServiceModule;->updateCLIP(IZ)I

    move-result p0

    return p0
.end method

.method public updateCLIR(I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 171
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsUtImpl;->mUtService:Lcom/sec/internal/interfaces/ims/servicemodules/ss/IUtServiceModule;

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 174
    :cond_0
    iget p0, p0, Lcom/sec/internal/imsphone/ImsUtImpl;->mPhoneId:I

    invoke-interface {v0, p0, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/ss/IUtServiceModule;->updateCLIR(II)I

    move-result p0

    return p0
.end method

.method public updateCOLP(Z)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 204
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsUtImpl;->mUtService:Lcom/sec/internal/interfaces/ims/servicemodules/ss/IUtServiceModule;

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 207
    :cond_0
    iget p0, p0, Lcom/sec/internal/imsphone/ImsUtImpl;->mPhoneId:I

    invoke-interface {v0, p0, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/ss/IUtServiceModule;->updateCOLP(IZ)I

    move-result p0

    return p0
.end method

.method public updateCOLR(I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 193
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsUtImpl;->mUtService:Lcom/sec/internal/interfaces/ims/servicemodules/ss/IUtServiceModule;

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 196
    :cond_0
    iget p0, p0, Lcom/sec/internal/imsphone/ImsUtImpl;->mPhoneId:I

    invoke-interface {v0, p0, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/ss/IUtServiceModule;->updateCOLR(II)I

    move-result p0

    return p0
.end method

.method public updateCallBarring(II[Ljava/lang/String;)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 130
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsUtImpl;->mUtService:Lcom/sec/internal/interfaces/ims/servicemodules/ss/IUtServiceModule;

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 133
    :cond_0
    iget v1, p0, Lcom/sec/internal/imsphone/ImsUtImpl;->mPhoneId:I

    const/16 v4, 0xff

    const/4 v5, 0x0

    move v2, p1

    move v3, p2

    move-object v6, p3

    invoke-interface/range {v0 .. v6}, Lcom/sec/internal/interfaces/ims/servicemodules/ss/IUtServiceModule;->updateCallBarring(IIIILjava/lang/String;[Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public updateCallBarringForServiceClass(II[Ljava/lang/String;I)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 228
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsUtImpl;->mUtService:Lcom/sec/internal/interfaces/ims/servicemodules/ss/IUtServiceModule;

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 231
    :cond_0
    iget v1, p0, Lcom/sec/internal/imsphone/ImsUtImpl;->mPhoneId:I

    const/4 v5, 0x0

    move v2, p1

    move v3, p2

    move v4, p4

    move-object v6, p3

    invoke-interface/range {v0 .. v6}, Lcom/sec/internal/interfaces/ims/servicemodules/ss/IUtServiceModule;->updateCallBarring(IIIILjava/lang/String;[Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public updateCallBarringWithPassword(II[Ljava/lang/String;ILjava/lang/String;)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 138
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsUtImpl;->mUtService:Lcom/sec/internal/interfaces/ims/servicemodules/ss/IUtServiceModule;

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 141
    :cond_0
    iget v1, p0, Lcom/sec/internal/imsphone/ImsUtImpl;->mPhoneId:I

    move v2, p1

    move v3, p2

    move v4, p4

    move-object v5, p5

    move-object v6, p3

    invoke-interface/range {v0 .. v6}, Lcom/sec/internal/interfaces/ims/servicemodules/ss/IUtServiceModule;->updateCallBarring(IIIILjava/lang/String;[Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public updateCallForward(IILjava/lang/String;II)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 149
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsUtImpl;->mUtService:Lcom/sec/internal/interfaces/ims/servicemodules/ss/IUtServiceModule;

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 152
    :cond_0
    iget v1, p0, Lcom/sec/internal/imsphone/ImsUtImpl;->mPhoneId:I

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/sec/internal/interfaces/ims/servicemodules/ss/IUtServiceModule;->updateCallForward(IIILjava/lang/String;II)I

    move-result p0

    return p0
.end method

.method public updateCallWaiting(ZI)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 160
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsUtImpl;->mUtService:Lcom/sec/internal/interfaces/ims/servicemodules/ss/IUtServiceModule;

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 163
    :cond_0
    iget p0, p0, Lcom/sec/internal/imsphone/ImsUtImpl;->mPhoneId:I

    invoke-interface {v0, p0, p1, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/ss/IUtServiceModule;->updateCallWaiting(IZI)I

    move-result p0

    return p0
.end method
