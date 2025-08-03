.class Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;
.super Ljava/lang/Object;
.source "ISecVideoEngineService.java"

# interfaces
.implements Lcom/sec/sve/ISecVideoEngineService;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 2315
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2316
    iput-object p1, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 2320
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method

.method public bindToNetwork(Landroid/net/Network;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2469
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2470
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2472
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 2473
    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2474
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0xa

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2475
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2478
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2479
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    .line 2478
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2479
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2480
    throw p0
.end method

.method public cpveStartInjection(Ljava/lang/String;I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4556
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4557
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4560
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4561
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4562
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4563
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x6c

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4564
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4565
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4568
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4569
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 4568
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4569
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4570
    throw p0
.end method

.method public cpveStopInjection()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4575
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4576
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4579
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4580
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x6d

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4581
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4582
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4585
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4586
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 4585
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4586
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4587
    throw p0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 0

    .line 2324
    const-string p0, "com.sec.sve.ISecVideoEngineService"

    return-object p0
.end method

.method public isSupportingCameraMotor()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4349
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4350
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4353
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4354
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x62

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4355
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4356
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4359
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4360
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 4359
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4360
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4361
    throw p0
.end method

.method public notifyImsServiceReady(Landroid/os/IBinder;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4654
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4655
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4657
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4658
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 4659
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x72

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4660
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4663
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4664
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    .line 4663
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4664
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4665
    throw p0
.end method

.method public onDestroy()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2328
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2329
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2331
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2332
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2333
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2336
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2337
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    .line 2336
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2337
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2338
    throw p0
.end method

.method public registerForCmcEventListener(Lcom/sec/sve/ICmcMediaEventListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4624
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4625
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4627
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4628
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 4629
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x70

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4630
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4633
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4634
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    .line 4633
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4634
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4635
    throw p0
.end method

.method public registerForMediaEventListener(Lcom/sec/sve/IImsMediaEventListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4593
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4594
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4596
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4597
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 4598
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x6e

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4599
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4602
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4603
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    .line 4602
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4603
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4604
    throw p0
.end method

.method public saeCreateChannel(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;ZZ)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2579
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2580
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2583
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2584
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2585
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2586
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2587
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2588
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2589
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2590
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeInt(I)V

    .line 2591
    invoke-virtual {v0, p8}, Landroid/os/Parcel;->writeInt(I)V

    .line 2592
    invoke-virtual {v0, p9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2593
    invoke-virtual {v0, p10}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2594
    invoke-virtual {v0, p11}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2595
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0xf

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2596
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2597
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2600
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2601
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 2600
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2601
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2602
    throw p0
.end method

.method public saeDeleteChannel(I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2689
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2690
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2693
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2694
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2695
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x14

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2696
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2697
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2700
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2701
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 2700
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2701
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2702
    throw p0
.end method

.method public saeEnableSRTP(III[BI)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2750
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2751
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2754
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2755
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2756
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2757
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2758
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 2759
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 2760
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x17

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2761
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2762
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2765
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2766
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 2765
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2766
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2767
    throw p0
.end method

.method public saeGetAudioRxTrackId(I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2928
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2929
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2932
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2933
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2934
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x20

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2935
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2936
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2939
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2940
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 2939
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2940
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2941
    throw p0
.end method

.method public saeGetLastPlayedVoiceTime(I)Lcom/sec/sve/TimeInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2853
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2854
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2857
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2858
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2859
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x1c

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2860
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2861
    sget-object p0, Lcom/sec/sve/TimeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/sve/TimeInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2864
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2865
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    :catchall_0
    move-exception p0

    .line 2864
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2865
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2866
    throw p0
.end method

.method public saeGetVersion([BI)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2909
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2910
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2913
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2914
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 2915
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2916
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x1f

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2917
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2918
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2921
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2922
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 2921
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2922
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2923
    throw p0
.end method

.method public saeHandleDtmf(IIII)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2707
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2708
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2711
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2712
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2713
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2714
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2715
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2716
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x15

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2717
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2718
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2721
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2722
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 2721
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2722
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2723
    throw p0
.end method

.method public saeInitialize(III)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2501
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2502
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2504
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2505
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2506
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2507
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2508
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0xc

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2509
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2512
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2513
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    .line 2512
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2513
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2514
    throw p0
.end method

.method public saeModifyChannel(II)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2670
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2671
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2674
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2675
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2676
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2677
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x13

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2678
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2679
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2682
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2683
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 2682
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2683
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2684
    throw p0
.end method

.method public saeSetAudioPath(II)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2946
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2947
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2950
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2951
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2952
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2953
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x21

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2954
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2955
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2958
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2959
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 2958
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2959
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2960
    throw p0
.end method

.method public saeSetCodecInfo(ILjava/lang/String;IIIIIIZIIIIICCCCCCIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2532
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v1

    .line 2533
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 2536
    :try_start_0
    const-string v0, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    move v0, p1

    .line 2537
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    move-object v0, p2

    .line 2538
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, p3

    .line 2539
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    move v0, p4

    .line 2540
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeInt(I)V

    move v0, p5

    .line 2541
    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeInt(I)V

    move v0, p6

    .line 2542
    invoke-virtual {v1, p6}, Landroid/os/Parcel;->writeInt(I)V

    move v0, p7

    .line 2543
    invoke-virtual {v1, p7}, Landroid/os/Parcel;->writeInt(I)V

    move v0, p8

    .line 2544
    invoke-virtual {v1, p8}, Landroid/os/Parcel;->writeInt(I)V

    move v0, p9

    .line 2545
    invoke-virtual {v1, p9}, Landroid/os/Parcel;->writeBoolean(Z)V

    move v0, p10

    .line 2546
    invoke-virtual {v1, p10}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v0, p11

    .line 2547
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v0, p12

    .line 2548
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v0, p13

    .line 2549
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v0, p14

    .line 2550
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v0, p15

    .line 2551
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v0, p16

    .line 2552
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v0, p17

    .line 2553
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v0, p18

    .line 2554
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v0, p19

    .line 2555
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v0, p20

    .line 2556
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v0, p21

    .line 2557
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v0, p22

    .line 2558
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v0, p23

    .line 2559
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object/from16 v0, p24

    .line 2560
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object/from16 v0, p25

    .line 2561
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object/from16 v0, p26

    .line 2562
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object/from16 v0, p27

    .line 2563
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object/from16 v0, p28

    .line 2564
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object/from16 v0, p29

    .line 2565
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object/from16 v0, p30

    .line 2566
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object v0, p0

    .line 2567
    iget-object v0, v0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2568
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 2569
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2572
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2573
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return v0

    :catchall_0
    move-exception v0

    .line 2572
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2573
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2574
    throw v0
.end method

.method public saeSetDtmfCodecInfo(IIIII)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2728
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2729
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2732
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2733
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2734
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2735
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2736
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2737
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 2738
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x16

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2739
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2740
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2743
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2744
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 2743
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2744
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2745
    throw p0
.end method

.method public saeSetRtcpOnCall(III)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2772
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2773
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2776
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2777
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2778
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2779
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2780
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x18

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2781
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2782
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2785
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2786
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 2785
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2786
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2787
    throw p0
.end method

.method public saeSetRtcpTimeout(IJ)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2811
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2812
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2815
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2816
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2817
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 2818
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x1a

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2819
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2820
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2823
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2824
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 2823
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2824
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2825
    throw p0
.end method

.method public saeSetRtcpXr(IIIII[I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2830
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2831
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2834
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2835
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2836
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2837
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2838
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2839
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 2840
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 2841
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x1b

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2842
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2843
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2846
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2847
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 2846
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2847
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2848
    throw p0
.end method

.method public saeSetRtpTimeout(IJ)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2792
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2793
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2796
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2797
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2798
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 2799
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x19

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2800
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2801
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2804
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2805
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 2804
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2805
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2806
    throw p0
.end method

.method public saeSetTOS(II)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2890
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2891
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2894
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2895
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2896
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2897
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x1e

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2898
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2899
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2902
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2903
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 2902
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2903
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2904
    throw p0
.end method

.method public saeSetVoicePlayDelay(II)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2871
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2872
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2875
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2876
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2877
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2878
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x1d

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2879
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2880
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2883
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2884
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 2883
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2884
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2885
    throw p0
.end method

.method public saeStartChannel(IIZ)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2607
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2608
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2611
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2612
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2613
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2614
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2615
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x10

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2616
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2617
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2620
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2621
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 2620
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2621
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2622
    throw p0
.end method

.method public saeStartRecording(IIIZ)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4478
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4479
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4482
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4483
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4484
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4485
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4486
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4487
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x68

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4488
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4489
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4492
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4493
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 4492
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4493
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4494
    throw p0
.end method

.method public saeStopChannel(I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2652
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2653
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2656
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2657
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2658
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x12

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2659
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2660
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2663
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2664
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 2663
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2664
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2665
    throw p0
.end method

.method public saeStopRecording(IZ)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4499
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4500
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4503
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4504
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4505
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4506
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x69

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4507
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4508
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4511
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4512
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 4511
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4512
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4513
    throw p0
.end method

.method public saeTerminate()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2518
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2519
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2521
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2522
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xd

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2523
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2526
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2527
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    .line 2526
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2527
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2528
    throw p0
.end method

.method public saeUpdateChannel(IILjava/lang/String;ILjava/lang/String;III)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2627
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2628
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2631
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2632
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2633
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2634
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2635
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2636
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2637
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2638
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeInt(I)V

    .line 2639
    invoke-virtual {v0, p8}, Landroid/os/Parcel;->writeInt(I)V

    .line 2640
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x11

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2641
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2642
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2645
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2646
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 2645
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2646
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2647
    throw p0
.end method

.method public sendGeneralBundleEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2484
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2485
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2487
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2488
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 2489
    invoke-virtual {v0, p2, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2490
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0xb

    invoke-interface {p0, p2, v0, v1, p1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2491
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2494
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2495
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    .line 2494
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2495
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2496
    throw p0
.end method

.method public sendStillImage(IZLjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2420
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2421
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2423
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2424
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2425
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2426
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2427
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2428
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x7

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2429
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2432
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2433
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    .line 2432
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2433
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2434
    throw p0
.end method

.method public setCameraEffect(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2438
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2439
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2441
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2442
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2443
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x8

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2444
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2447
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2448
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    .line 2447
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2448
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2449
    throw p0
.end method

.method public setDisplaySurface(ILandroid/view/Surface;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2359
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2360
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2362
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2363
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x0

    .line 2364
    invoke-virtual {v0, p2, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2365
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2366
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p2, 0x3

    invoke-interface {p0, p2, v0, v1, p1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2367
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2370
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2371
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    .line 2370
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2371
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2372
    throw p0
.end method

.method public setOrientation(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2376
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2377
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2379
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2380
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2381
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x4

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2382
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2385
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2386
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    .line 2385
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2386
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2387
    throw p0
.end method

.method public setPreviewResolution(II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2453
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2454
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2456
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2457
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2458
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2459
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x9

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2460
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2463
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2464
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    .line 2463
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2464
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2465
    throw p0
.end method

.method public setPreviewSurface(ILandroid/view/Surface;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2342
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2343
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2345
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2346
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x0

    .line 2347
    invoke-virtual {v0, p2, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2348
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2349
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p2, 0x2

    invoke-interface {p0, p2, v0, v1, p1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2350
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2353
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2354
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    .line 2353
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2354
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2355
    throw p0
.end method

.method public setZoom(F)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2391
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2392
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2394
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2395
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 2396
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x5

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2397
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2400
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2401
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    .line 2400
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2401
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2402
    throw p0
.end method

.method public sreCreateRelayChannel(II)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3980
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3981
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3984
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3985
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3986
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3987
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x51

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3988
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3989
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3992
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3993
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 3992
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3993
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3994
    throw p0
.end method

.method public sreCreateStream(IIILjava/lang/String;ILjava/lang/String;IZZIILjava/lang/String;ZZ)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3893
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v1

    .line 3894
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 3897
    :try_start_0
    const-string v0, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    move v0, p1

    .line 3898
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    move v0, p2

    .line 3899
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    move v0, p3

    .line 3900
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    move-object v0, p4

    .line 3901
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, p5

    .line 3902
    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeInt(I)V

    move-object v0, p6

    .line 3903
    invoke-virtual {v1, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, p7

    .line 3904
    invoke-virtual {v1, p7}, Landroid/os/Parcel;->writeInt(I)V

    move v0, p8

    .line 3905
    invoke-virtual {v1, p8}, Landroid/os/Parcel;->writeBoolean(Z)V

    move v0, p9

    .line 3906
    invoke-virtual {v1, p9}, Landroid/os/Parcel;->writeBoolean(Z)V

    move v0, p10

    .line 3907
    invoke-virtual {v1, p10}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v0, p11

    .line 3908
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v0, p12

    .line 3909
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move/from16 v0, p13

    .line 3910
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    move/from16 v0, p14

    .line 3911
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    move-object v0, p0

    .line 3912
    iget-object v0, v0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x4d

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3913
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 3914
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3917
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3918
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return v0

    :catchall_0
    move-exception v0

    .line 3917
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3918
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3919
    throw v0
.end method

.method public sreDeleteRelayChannel(I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3999
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4000
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4003
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4004
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4005
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x52

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4006
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4007
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4010
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4011
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 4010
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4011
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4012
    throw p0
.end method

.method public sreDeleteStream(I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3944
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3945
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3948
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3949
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3950
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x4f

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3951
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3952
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3955
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3956
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 3955
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3956
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3957
    throw p0
.end method

.method public sreEnableSRTP(III[BI)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4134
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4135
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4138
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4139
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4140
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4141
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4142
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 4143
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 4144
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x59

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4145
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4146
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4149
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4150
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 4149
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4150
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4151
    throw p0
.end method

.method public sreGetMdmn(I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3856
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3857
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3860
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3861
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3862
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x4b

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3863
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3864
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3867
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3868
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 3867
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3868
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3869
    throw p0
.end method

.method public sreGetVersion()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3820
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3821
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3824
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3825
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x49

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3826
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3827
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3830
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3831
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    :catchall_0
    move-exception p0

    .line 3830
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3831
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3832
    throw p0
.end method

.method public sreHoldRelayChannel(I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4054
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4055
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4058
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4059
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4060
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x55

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4061
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4062
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4065
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4066
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 4065
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4066
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4067
    throw p0
.end method

.method public sreInitialize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3806
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3807
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3809
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3810
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x48

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3811
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3814
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3815
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    .line 3814
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3815
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3816
    throw p0
.end method

.method public sreResumeRelayChannel(I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4072
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4073
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4076
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4077
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4078
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x56

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4079
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4080
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4083
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4084
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 4083
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4084
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4085
    throw p0
.end method

.method public sreSetCodecInfo(ILjava/lang/String;IIIIIIZIIIIICCCCCCIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4239
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v1

    .line 4240
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 4243
    :try_start_0
    const-string v0, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    move v0, p1

    .line 4244
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    move-object v0, p2

    .line 4245
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, p3

    .line 4246
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    move v0, p4

    .line 4247
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeInt(I)V

    move v0, p5

    .line 4248
    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeInt(I)V

    move v0, p6

    .line 4249
    invoke-virtual {v1, p6}, Landroid/os/Parcel;->writeInt(I)V

    move v0, p7

    .line 4250
    invoke-virtual {v1, p7}, Landroid/os/Parcel;->writeInt(I)V

    move v0, p8

    .line 4251
    invoke-virtual {v1, p8}, Landroid/os/Parcel;->writeInt(I)V

    move v0, p9

    .line 4252
    invoke-virtual {v1, p9}, Landroid/os/Parcel;->writeBoolean(Z)V

    move v0, p10

    .line 4253
    invoke-virtual {v1, p10}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v0, p11

    .line 4254
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v0, p12

    .line 4255
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v0, p13

    .line 4256
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v0, p14

    .line 4257
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v0, p15

    .line 4258
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v0, p16

    .line 4259
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v0, p17

    .line 4260
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v0, p18

    .line 4261
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v0, p19

    .line 4262
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v0, p20

    .line 4263
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v0, p21

    .line 4264
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v0, p22

    .line 4265
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v0, p23

    .line 4266
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object/from16 v0, p24

    .line 4267
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object/from16 v0, p25

    .line 4268
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object/from16 v0, p26

    .line 4269
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object/from16 v0, p27

    .line 4270
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object/from16 v0, p28

    .line 4271
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object/from16 v0, p29

    .line 4272
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object/from16 v0, p30

    .line 4273
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move/from16 v0, p31

    .line 4274
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move-object v0, p0

    .line 4275
    iget-object v0, v0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x5e

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4276
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 4277
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4280
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 4281
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return v0

    :catchall_0
    move-exception v0

    .line 4280
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 4281
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4282
    throw v0
.end method

.method public sreSetConnection(ILjava/lang/String;ILjava/lang/String;IIII)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4109
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4110
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4113
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4114
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4115
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4116
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4117
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4118
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 4119
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 4120
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeInt(I)V

    .line 4121
    invoke-virtual {v0, p8}, Landroid/os/Parcel;->writeInt(I)V

    .line 4122
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x58

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4123
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4124
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4127
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4128
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 4127
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4128
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4129
    throw p0
.end method

.method public sreSetDtmfCodecInfo(IIIIII)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4287
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4288
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4291
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4292
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4293
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4294
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4295
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 4296
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 4297
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 4298
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x5f

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4299
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4300
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4303
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4304
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 4303
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4304
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4305
    throw p0
.end method

.method public sreSetMdmn(IZ)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3837
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3838
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3841
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3842
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3843
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3844
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x4a

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3845
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3846
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3849
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3850
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 3849
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3850
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3851
    throw p0
.end method

.method public sreSetNetId(IJ)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3874
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3875
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3878
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3879
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3880
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 3881
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x4c

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3882
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3883
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3886
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3887
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 3886
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3887
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3888
    throw p0
.end method

.method public sreSetRtcpOnCall(IIIII)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4156
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4157
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4160
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4161
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4162
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4163
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4164
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 4165
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 4166
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x5a

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4167
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4168
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4171
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4172
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 4171
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4172
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4173
    throw p0
.end method

.method public sreSetRtcpTimeout(II)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4197
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4198
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4201
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4202
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4203
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4204
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x5c

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4205
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4206
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4209
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4210
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 4209
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4210
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4211
    throw p0
.end method

.method public sreSetRtcpXr(IIIII[I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4216
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4217
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4220
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4221
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4222
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4223
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4224
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 4225
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 4226
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 4227
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x5d

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4228
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4229
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4232
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4233
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 4232
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4233
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4234
    throw p0
.end method

.method public sreSetRtpTimeout(II)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4178
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4179
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4182
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4183
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4184
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4185
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x5b

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4186
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4187
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4190
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4191
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 4190
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4191
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4192
    throw p0
.end method

.method public sreStartRecording(III)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4310
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4311
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4314
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4315
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4316
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4317
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4318
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x60

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4319
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4320
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4323
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4324
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 4323
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4324
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4325
    throw p0
.end method

.method public sreStartRelayChannel(II)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4017
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4018
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4021
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4022
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4023
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4024
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x53

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4025
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4026
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4029
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4030
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 4029
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4030
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4031
    throw p0
.end method

.method public sreStartStream(III)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3924
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3925
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3928
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3929
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3930
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3931
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3932
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x4e

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3933
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3934
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3937
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3938
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 3937
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3938
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3939
    throw p0
.end method

.method public sreStopRecording(II)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4330
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4331
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4334
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4335
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4336
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4337
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x61

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4338
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4339
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4342
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4343
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 4342
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4343
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4344
    throw p0
.end method

.method public sreStopRelayChannel(I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4036
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4037
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4040
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4041
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4042
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x54

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4043
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4044
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4047
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4048
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 4047
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4048
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4049
    throw p0
.end method

.method public sreUpdateRelayChannel(II)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4090
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4091
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4094
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4095
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4096
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4097
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x57

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4098
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4099
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4102
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4103
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 4102
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4103
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4104
    throw p0
.end method

.method public sreUpdateStream(I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3962
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3963
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3966
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3967
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3968
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x50

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3969
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3970
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3973
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3974
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 3973
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3974
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3975
    throw p0
.end method

.method public steCreateChannel(ILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;ZZ)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3498
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3499
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3502
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3503
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3504
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3505
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3506
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3507
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 3508
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 3509
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeInt(I)V

    .line 3510
    invoke-virtual {v0, p8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3511
    invoke-virtual {v0, p9}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3512
    invoke-virtual {v0, p10}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3513
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x39

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3514
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3515
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3518
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3519
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 3518
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3519
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3520
    throw p0
.end method

.method public steDeleteChannel(I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3607
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3608
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3611
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3612
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3613
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x3e

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3614
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3615
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3618
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3619
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 3618
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3619
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3620
    throw p0
.end method

.method public steEnableSRTP(III[BI)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3645
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3646
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3649
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3650
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3651
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3652
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3653
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 3654
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 3655
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x40

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3656
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3657
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3660
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3661
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 3660
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3661
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3662
    throw p0
.end method

.method public steInitialize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3390
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3391
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3393
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3394
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x36

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3395
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3398
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3399
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    .line 3398
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3399
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3400
    throw p0
.end method

.method public steModifyChannel(II)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3588
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3589
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3592
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3593
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3594
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3595
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x3d

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3596
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3597
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3600
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3601
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 3600
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3601
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3602
    throw p0
.end method

.method public steSendText(ILjava/lang/String;I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3625
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3626
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3629
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3630
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3631
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3632
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3633
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x3f

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3634
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3635
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3638
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3639
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 3638
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3639
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3640
    throw p0
.end method

.method public steSetCallOptions(IZ)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3748
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3749
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3752
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3753
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3754
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3755
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x45

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3756
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3757
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3760
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3761
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 3760
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3761
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3762
    throw p0
.end method

.method public steSetCodecInfo(ILjava/lang/String;IIIIIIZIIIIICCCCCCIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3404
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v1

    .line 3405
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 3408
    :try_start_0
    const-string v0, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    move v0, p1

    .line 3409
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    move-object v0, p2

    .line 3410
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, p3

    .line 3411
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    move v0, p4

    .line 3412
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeInt(I)V

    move v0, p5

    .line 3413
    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeInt(I)V

    move v0, p6

    .line 3414
    invoke-virtual {v1, p6}, Landroid/os/Parcel;->writeInt(I)V

    move v0, p7

    .line 3415
    invoke-virtual {v1, p7}, Landroid/os/Parcel;->writeInt(I)V

    move v0, p8

    .line 3416
    invoke-virtual {v1, p8}, Landroid/os/Parcel;->writeInt(I)V

    move v0, p9

    .line 3417
    invoke-virtual {v1, p9}, Landroid/os/Parcel;->writeBoolean(Z)V

    move v0, p10

    .line 3418
    invoke-virtual {v1, p10}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v0, p11

    .line 3419
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v0, p12

    .line 3420
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v0, p13

    .line 3421
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v0, p14

    .line 3422
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v0, p15

    .line 3423
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v0, p16

    .line 3424
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v0, p17

    .line 3425
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v0, p18

    .line 3426
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v0, p19

    .line 3427
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v0, p20

    .line 3428
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v0, p21

    .line 3429
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v0, p22

    .line 3430
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v0, p23

    .line 3431
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object/from16 v0, p24

    .line 3432
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object/from16 v0, p25

    .line 3433
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object/from16 v0, p26

    .line 3434
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object/from16 v0, p27

    .line 3435
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object/from16 v0, p28

    .line 3436
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object/from16 v0, p29

    .line 3437
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object/from16 v0, p30

    .line 3438
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object v0, p0

    .line 3439
    iget-object v0, v0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x37

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3440
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 3441
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3444
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3445
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return v0

    :catchall_0
    move-exception v0

    .line 3444
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3445
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3446
    throw v0
.end method

.method public steSetNetId(II)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3767
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3768
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3771
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3772
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3773
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3774
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x46

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3775
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3776
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3779
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3780
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 3779
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3780
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3781
    throw p0
.end method

.method public steSetRtcpOnCall(III)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3667
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3668
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3671
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3672
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3673
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3674
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3675
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x41

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3676
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3677
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3680
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3681
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 3680
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3681
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3682
    throw p0
.end method

.method public steSetRtcpTimeout(IJ)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3706
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3707
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3710
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3711
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3712
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 3713
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x43

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3714
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3715
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3718
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3719
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 3718
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3719
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3720
    throw p0
.end method

.method public steSetRtcpXr(IIIII[I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3725
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3726
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3729
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3730
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3731
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3732
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3733
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3734
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 3735
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 3736
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x44

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3737
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3738
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3741
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3742
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 3741
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3742
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3743
    throw p0
.end method

.method public steSetRtpTimeout(IJ)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3687
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3688
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3691
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3692
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3693
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 3694
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x42

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3695
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3696
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3699
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3700
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 3699
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3700
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3701
    throw p0
.end method

.method public steSetSessionId(II)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3786
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3787
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3790
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3791
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3792
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3793
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x47

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3794
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3795
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3798
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3799
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 3798
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3799
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3800
    throw p0
.end method

.method public steStartChannel(IIZ)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3525
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3526
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3529
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3530
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3531
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3532
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3533
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x3a

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3534
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3535
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3538
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3539
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 3538
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3539
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3540
    throw p0
.end method

.method public steStopChannel(I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3570
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3571
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3574
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3575
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3576
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x3c

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3577
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3578
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3581
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3582
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 3581
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3582
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3583
    throw p0
.end method

.method public steUpdateChannel(IILjava/lang/String;ILjava/lang/String;III)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3545
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3546
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3549
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3550
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3551
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3552
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3553
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3554
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3555
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 3556
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeInt(I)V

    .line 3557
    invoke-virtual {v0, p8}, Landroid/os/Parcel;->writeInt(I)V

    .line 3558
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x3b

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3559
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3560
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3563
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3564
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 3563
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3564
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3565
    throw p0
.end method

.method public steUpdateSendCodec(ILjava/lang/String;IIIIIIZIIIIICCCCCCIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3451
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v1

    .line 3452
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 3455
    :try_start_0
    const-string v0, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    move v0, p1

    .line 3456
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    move-object v0, p2

    .line 3457
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, p3

    .line 3458
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    move v0, p4

    .line 3459
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeInt(I)V

    move v0, p5

    .line 3460
    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeInt(I)V

    move v0, p6

    .line 3461
    invoke-virtual {v1, p6}, Landroid/os/Parcel;->writeInt(I)V

    move v0, p7

    .line 3462
    invoke-virtual {v1, p7}, Landroid/os/Parcel;->writeInt(I)V

    move v0, p8

    .line 3463
    invoke-virtual {v1, p8}, Landroid/os/Parcel;->writeInt(I)V

    move v0, p9

    .line 3464
    invoke-virtual {v1, p9}, Landroid/os/Parcel;->writeBoolean(Z)V

    move v0, p10

    .line 3465
    invoke-virtual {v1, p10}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v0, p11

    .line 3466
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v0, p12

    .line 3467
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v0, p13

    .line 3468
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v0, p14

    .line 3469
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v0, p15

    .line 3470
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v0, p16

    .line 3471
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v0, p17

    .line 3472
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v0, p18

    .line 3473
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v0, p19

    .line 3474
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v0, p20

    .line 3475
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v0, p21

    .line 3476
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v0, p22

    .line 3477
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v0, p23

    .line 3478
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object/from16 v0, p24

    .line 3479
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object/from16 v0, p25

    .line 3480
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object/from16 v0, p26

    .line 3481
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object/from16 v0, p27

    .line 3482
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object/from16 v0, p28

    .line 3483
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object/from16 v0, p29

    .line 3484
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object/from16 v0, p30

    .line 3485
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object v0, p0

    .line 3486
    iget-object v0, v0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x38

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3487
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 3488
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3491
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3492
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return v0

    :catchall_0
    move-exception v0

    .line 3491
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3492
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3493
    throw v0
.end method

.method public sveCmcRecorderCreate(IIILjava/lang/String;IIJILjava/lang/String;IIIIIJLjava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4390
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v1

    .line 4391
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 4394
    :try_start_0
    const-string v0, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    move v0, p1

    .line 4395
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    move v0, p2

    .line 4396
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    move v0, p3

    .line 4397
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    move-object v0, p4

    .line 4398
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, p5

    .line 4399
    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeInt(I)V

    move v0, p6

    .line 4400
    invoke-virtual {v1, p6}, Landroid/os/Parcel;->writeInt(I)V

    move-wide v3, p7

    .line 4401
    invoke-virtual {v1, p7, p8}, Landroid/os/Parcel;->writeLong(J)V

    move v0, p9

    .line 4402
    invoke-virtual {v1, p9}, Landroid/os/Parcel;->writeInt(I)V

    move-object v0, p10

    .line 4403
    invoke-virtual {v1, p10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move/from16 v0, p11

    .line 4404
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v0, p12

    .line 4405
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v0, p13

    .line 4406
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v0, p14

    .line 4407
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v0, p15

    .line 4408
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move-wide/from16 v3, p16

    .line 4409
    invoke-virtual {v1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    move-object/from16 v0, p18

    .line 4410
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object v0, p0

    .line 4411
    iget-object v0, v0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x64

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4412
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 4413
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4416
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 4417
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return v0

    :catchall_0
    move-exception v0

    .line 4416
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 4417
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4418
    throw v0
.end method

.method public sveCreateChannel()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2966
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2967
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2970
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2971
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x22

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2972
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2973
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2976
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2977
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 2976
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2977
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2978
    throw p0
.end method

.method public sveGetCodecCapacity(I)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3371
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3372
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3375
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3376
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3377
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x35

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3378
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3379
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3382
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3383
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    :catchall_0
    move-exception p0

    .line 3382
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3383
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3384
    throw p0
.end method

.method public sveGetLastPlayedVideoTime(I)Lcom/sec/sve/TimeInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3274
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3275
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3278
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3279
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3280
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x30

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3281
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3282
    sget-object p0, Lcom/sec/sve/TimeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/sve/TimeInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3285
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3286
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    :catchall_0
    move-exception p0

    .line 3285
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3286
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3287
    throw p0
.end method

.method public sveGetRtcpTimeInfo(I)Lcom/sec/sve/TimeInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3353
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3354
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3357
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3358
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3359
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x34

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3360
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3361
    sget-object p0, Lcom/sec/sve/TimeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/sve/TimeInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3364
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3365
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    :catchall_0
    move-exception p0

    .line 3364
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3365
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3366
    throw p0
.end method

.method public sveRecorderCreate(ILjava/lang/String;IILjava/lang/String;I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4367
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4368
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4371
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4372
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4373
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4374
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4375
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 4376
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4377
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 4378
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x63

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4379
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4380
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4383
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4384
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 4383
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4384
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4385
    throw p0
.end method

.method public sveRecorderDelete(I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4423
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4424
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4427
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4428
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4429
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x65

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4430
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4431
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4434
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4435
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 4434
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4435
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4436
    throw p0
.end method

.method public sveRecorderStart(I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4441
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4442
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4445
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4446
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4447
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x66

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4448
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4449
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4452
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4453
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 4452
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4453
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4454
    throw p0
.end method

.method public sveRecorderStop(IZ)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4459
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4460
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4463
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4464
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4465
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4466
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x67

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4467
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4468
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4471
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4472
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 4471
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4472
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4473
    throw p0
.end method

.method public sveRestartEmoji(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3239
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3240
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3242
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3243
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3244
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x2e

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3245
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3248
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3249
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    .line 3248
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3249
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3250
    throw p0
.end method

.method public sveSendGeneralEvent(IIILjava/lang/String;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3332
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3333
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3336
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3337
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3338
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3339
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3340
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3341
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x33

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3342
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3343
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3346
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3347
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 3346
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3347
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3348
    throw p0
.end method

.method public sveSetCodecInfo(IIIIIILjava/lang/String;IIIIIZIZIIIII[B[B[BIII)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3047
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v1

    .line 3048
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 3051
    :try_start_0
    const-string v0, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    move v0, p1

    .line 3052
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    move v0, p2

    .line 3053
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    move v0, p3

    .line 3054
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    move v0, p4

    .line 3055
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeInt(I)V

    move v0, p5

    .line 3056
    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeInt(I)V

    move v0, p6

    .line 3057
    invoke-virtual {v1, p6}, Landroid/os/Parcel;->writeInt(I)V

    move-object v0, p7

    .line 3058
    invoke-virtual {v1, p7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, p8

    .line 3059
    invoke-virtual {v1, p8}, Landroid/os/Parcel;->writeInt(I)V

    move v0, p9

    .line 3060
    invoke-virtual {v1, p9}, Landroid/os/Parcel;->writeInt(I)V

    move v0, p10

    .line 3061
    invoke-virtual {v1, p10}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v0, p11

    .line 3062
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v0, p12

    .line 3063
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v0, p13

    .line 3064
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    move/from16 v0, p14

    .line 3065
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v0, p15

    .line 3066
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    move/from16 v0, p16

    .line 3067
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v0, p17

    .line 3068
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v0, p18

    .line 3069
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v0, p19

    .line 3070
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v0, p20

    .line 3071
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v0, p21

    .line 3072
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    move-object/from16 v0, p22

    .line 3073
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    move-object/from16 v0, p23

    .line 3074
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    move/from16 v0, p24

    .line 3075
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v0, p25

    .line 3076
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v0, p26

    .line 3077
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move-object v0, p0

    .line 3078
    iget-object v0, v0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x26

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3079
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 3080
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3083
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3084
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return v0

    :catchall_0
    move-exception v0

    .line 3083
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3084
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3085
    throw v0
.end method

.method public sveSetConnection(ILjava/lang/String;ILjava/lang/String;IIIIJ)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3021
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3022
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3025
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3026
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3027
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3028
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3029
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3030
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 3031
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 3032
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeInt(I)V

    .line 3033
    invoke-virtual {v0, p8}, Landroid/os/Parcel;->writeInt(I)V

    .line 3034
    invoke-virtual {v0, p9, p10}, Landroid/os/Parcel;->writeLong(J)V

    .line 3035
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x25

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3036
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3037
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3040
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3041
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 3040
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3041
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3042
    throw p0
.end method

.method public sveSetGcmSrtpParams(IIIICI[BI[BI)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3120
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3121
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3124
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3125
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3126
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3127
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3128
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3129
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 3130
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 3131
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 3132
    invoke-virtual {v0, p8}, Landroid/os/Parcel;->writeInt(I)V

    .line 3133
    invoke-virtual {v0, p9}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 3134
    invoke-virtual {v0, p10}, Landroid/os/Parcel;->writeInt(I)V

    .line 3135
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x28

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3136
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3137
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3140
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3141
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 3140
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3141
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3142
    throw p0
.end method

.method public sveSetHeldInfo(IZZ)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3254
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3255
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3258
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3259
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3260
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3261
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3262
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x2f

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3263
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3264
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3267
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3268
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 3267
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3268
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3269
    throw p0
.end method

.method public sveSetMediaConfig(IZIZIIII)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3147
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3148
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3151
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3152
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3153
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3154
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3155
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3156
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 3157
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 3158
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeInt(I)V

    .line 3159
    invoke-virtual {v0, p8}, Landroid/os/Parcel;->writeInt(I)V

    .line 3160
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x29

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3161
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3162
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3165
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3166
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 3165
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3166
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3167
    throw p0
.end method

.method public sveSetNetworkQoS(IIII)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3311
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3312
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3315
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3316
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3317
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3318
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3319
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3320
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x32

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3321
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3322
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3325
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3326
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 3325
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3326
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3327
    throw p0
.end method

.method public sveSetSRTPParams(ILjava/lang/String;[BIIIILjava/lang/String;[BIIII)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3090
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v1

    .line 3091
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 3094
    :try_start_0
    const-string v0, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    move v0, p1

    .line 3095
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    move-object v0, p2

    .line 3096
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object v0, p3

    .line 3097
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeByteArray([B)V

    move v0, p4

    .line 3098
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeInt(I)V

    move v0, p5

    .line 3099
    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeInt(I)V

    move v0, p6

    .line 3100
    invoke-virtual {v1, p6}, Landroid/os/Parcel;->writeInt(I)V

    move v0, p7

    .line 3101
    invoke-virtual {v1, p7}, Landroid/os/Parcel;->writeInt(I)V

    move-object v0, p8

    .line 3102
    invoke-virtual {v1, p8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object v0, p9

    .line 3103
    invoke-virtual {v1, p9}, Landroid/os/Parcel;->writeByteArray([B)V

    move v0, p10

    .line 3104
    invoke-virtual {v1, p10}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v0, p11

    .line 3105
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v0, p12

    .line 3106
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v0, p13

    .line 3107
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move-object v0, p0

    .line 3108
    iget-object v0, v0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x27

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3109
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 3110
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3113
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3114
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return v0

    :catchall_0
    move-exception v0

    .line 3113
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3114
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3115
    throw v0
.end method

.method public sveSetVideoPlayDelay(II)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3292
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3293
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3296
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3297
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3298
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3299
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x31

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3300
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3301
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3304
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3305
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 3304
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3305
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3306
    throw p0
.end method

.method public sveStartCamera(II)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3172
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3173
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3176
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3177
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3178
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3179
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x2a

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3180
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3181
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3184
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3185
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 3184
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3185
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3186
    throw p0
.end method

.method public sveStartChannel(III)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2983
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2984
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2987
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2988
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2989
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2990
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2991
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x23

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2992
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2993
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2996
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2997
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 2996
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2997
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2998
    throw p0
.end method

.method public sveStartEmoji(ILjava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3208
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3209
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3211
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3212
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3213
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3214
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x2c

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3215
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3218
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3219
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    .line 3218
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3219
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3220
    throw p0
.end method

.method public sveStartRecording(II)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4518
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4519
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4522
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4523
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4524
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4525
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x6a

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4526
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4527
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4530
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4531
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 4530
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4531
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4532
    throw p0
.end method

.method public sveStopCamera()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3191
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3192
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3195
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3196
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x2b

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3197
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3198
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3201
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3202
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 3201
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3202
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3203
    throw p0
.end method

.method public sveStopChannel(I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3003
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3004
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3007
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3008
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3009
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x24

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3010
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3011
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3014
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3015
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 3014
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3015
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3016
    throw p0
.end method

.method public sveStopEmoji(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3224
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3225
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3227
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3228
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3229
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x2d

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3230
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3233
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3234
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    .line 3233
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3234
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3235
    throw p0
.end method

.method public sveStopRecording(I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4537
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4538
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4541
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4542
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4543
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x6b

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4544
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4545
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4548
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4549
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 4548
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4549
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4550
    throw p0
.end method

.method public switchCamera()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2406
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2407
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2409
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2410
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2411
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2414
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2415
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    .line 2414
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2415
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2416
    throw p0
.end method

.method public unregisterForCmcEventListener(Lcom/sec/sve/ICmcMediaEventListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4639
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4640
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4642
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4643
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 4644
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x71

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4645
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4648
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4649
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    .line 4648
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4649
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4650
    throw p0
.end method

.method public unregisterForMediaEventListener(Lcom/sec/sve/IImsMediaEventListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4608
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4609
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4611
    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4612
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 4613
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x6f

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4614
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4617
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4618
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    .line 4617
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4618
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4619
    throw p0
.end method
