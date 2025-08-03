.class Lcom/sec/internal/ims/core/WfcEpdgManager$3;
.super Lcom/sec/epdg/EpdgManager$EpdgListener;
.source "WfcEpdgManager.java"


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/core/WfcEpdgManager;)V
    .locals 0

    .line 410
    iput-object p1, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$3;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    invoke-direct {p0}, Lcom/sec/epdg/EpdgManager$EpdgListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onEpdgAvailable(III)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne p2, v2, :cond_0

    .line 414
    iget-object p2, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$3;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    iput-boolean v1, p2, Lcom/sec/internal/ims/core/WfcEpdgManager;->mIsEpdgReqTerminate:Z

    .line 417
    invoke-static {p2, v2}, Lcom/sec/internal/ims/core/WfcEpdgManager;->access$000(Lcom/sec/internal/ims/core/WfcEpdgManager;I)V

    move p2, v0

    :cond_0
    if-ne p2, v1, :cond_1

    move v0, v1

    .line 421
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$3;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    iget-object v2, v1, Lcom/sec/internal/ims/core/WfcEpdgManager;->mEpdgAvailable:[Z

    aget-boolean v2, v2, p1

    if-ne v2, v0, :cond_2

    invoke-static {v1}, Lcom/sec/internal/ims/core/WfcEpdgManager;->-$$Nest$fgetmEpdgPhysicalInterface(Lcom/sec/internal/ims/core/WfcEpdgManager;)[I

    move-result-object v1

    aget v1, v1, p1

    if-ne v1, p3, :cond_2

    return-void

    .line 424
    :cond_2
    iget-object v1, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$3;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    iget-object v2, v1, Lcom/sec/internal/ims/core/WfcEpdgManager;->mEpdgAvailable:[Z

    aput-boolean v0, v2, p1

    .line 425
    invoke-static {v1}, Lcom/sec/internal/ims/core/WfcEpdgManager;->-$$Nest$fgetmEpdgPhysicalInterface(Lcom/sec/internal/ims/core/WfcEpdgManager;)[I

    move-result-object v0

    aput p3, v0, p1

    .line 426
    iget-object v0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$3;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    iget-object v0, v0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mListeners:Ljava/util/List;

    monitor-enter v0

    .line 427
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$3;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    iget-object p0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 429
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 430
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/IEpdgListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 432
    :try_start_1
    invoke-interface {v1, p1, p2, p3}, Lcom/sec/ims/IEpdgListener;->onEpdgAvailable(III)V
    :try_end_1
    .catch Landroid/os/DeadObjectException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 437
    :try_start_2
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 434
    :catch_1
    invoke-static {}, Lcom/sec/internal/ims/core/WfcEpdgManager;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, " DeadObjectException remove dead listener."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 440
    :cond_3
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public onEpdgDeregister(I)V
    .locals 3

    .line 464
    iget-object v0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$3;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    iget-object v0, v0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mListeners:Ljava/util/List;

    monitor-enter v0

    .line 465
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$3;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    iget-object p0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 467
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 468
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/IEpdgListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 470
    :try_start_1
    invoke-interface {v1, p1}, Lcom/sec/ims/IEpdgListener;->onEpdgDeregister(I)V
    :try_end_1
    .catch Landroid/os/DeadObjectException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 475
    :try_start_2
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 472
    :catch_1
    invoke-static {}, Lcom/sec/internal/ims/core/WfcEpdgManager;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, " DeadObjectException remove dead listener."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 478
    :cond_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public onEpdgHandoverEnableChanged(IZ)V
    .locals 3

    .line 577
    iget-object v0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$3;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    iget-object v0, v0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mListeners:Ljava/util/List;

    monitor-enter v0

    .line 578
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$3;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    iget-object p0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 580
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 581
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/IEpdgListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 583
    :try_start_1
    invoke-interface {v1, p1, p2}, Lcom/sec/ims/IEpdgListener;->onEpdgHandoverEnableChanged(IZ)V
    :try_end_1
    .catch Landroid/os/DeadObjectException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 588
    :try_start_2
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 585
    :catch_1
    invoke-static {}, Lcom/sec/internal/ims/core/WfcEpdgManager;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, " DeadObjectException remove dead listener."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 591
    :cond_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public onEpdgHandoverResult(IIILjava/lang/String;)V
    .locals 3

    .line 445
    iget-object v0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$3;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    iget-object v0, v0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mListeners:Ljava/util/List;

    monitor-enter v0

    .line 446
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$3;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    iget-object p0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 448
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 449
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/IEpdgListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 451
    :try_start_1
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/sec/ims/IEpdgListener;->onEpdgHandoverResult(IIILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/DeadObjectException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 456
    :try_start_2
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 453
    :catch_1
    invoke-static {}, Lcom/sec/internal/ims/core/WfcEpdgManager;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, " DeadObjectException remove dead listener."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 459
    :cond_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public onEpdgIpsecConnection(ILjava/lang/String;II)V
    .locals 3

    .line 483
    iget-object v0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$3;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    iget-object v0, v0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mListeners:Ljava/util/List;

    monitor-enter v0

    .line 484
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$3;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    iget-object p0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 486
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 487
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/IEpdgListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 489
    :try_start_1
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/sec/ims/IEpdgListener;->onEpdgIpsecConnection(ILjava/lang/String;II)V
    :try_end_1
    .catch Landroid/os/DeadObjectException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 494
    :try_start_2
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 491
    :catch_1
    invoke-static {}, Lcom/sec/internal/ims/core/WfcEpdgManager;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, " DeadObjectException remove dead listener."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 497
    :cond_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public onEpdgIpsecDisconnection(ILjava/lang/String;)V
    .locals 3

    .line 502
    iget-object v0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$3;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    iget-object v0, v0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mListeners:Ljava/util/List;

    monitor-enter v0

    .line 503
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$3;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    iget-object p0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 505
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 506
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/IEpdgListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 508
    :try_start_1
    invoke-interface {v1, p1, p2}, Lcom/sec/ims/IEpdgListener;->onEpdgIpsecDisconnection(ILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/DeadObjectException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 513
    :try_start_2
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 510
    :catch_1
    invoke-static {}, Lcom/sec/internal/ims/core/WfcEpdgManager;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, " DeadObjectException remove dead listener."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 516
    :cond_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public onEpdgRegister(IZ)V
    .locals 3

    .line 521
    iget-object v0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$3;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    iget-object v0, v0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mListeners:Ljava/util/List;

    monitor-enter v0

    .line 522
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$3;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    iget-object p0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 524
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 525
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/IEpdgListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 527
    :try_start_1
    invoke-interface {v1, p1, p2}, Lcom/sec/ims/IEpdgListener;->onEpdgRegister(IZ)V
    :try_end_1
    .catch Landroid/os/DeadObjectException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 532
    :try_start_2
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 529
    :catch_1
    invoke-static {}, Lcom/sec/internal/ims/core/WfcEpdgManager;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, " DeadObjectException remove dead listener."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 535
    :cond_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public onEpdgReleaseCall(I)V
    .locals 3

    .line 558
    iget-object v0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$3;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    iget-object v0, v0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mListeners:Ljava/util/List;

    monitor-enter v0

    .line 559
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$3;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    iget-object p0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 561
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 562
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/IEpdgListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 564
    :try_start_1
    invoke-interface {v1, p1}, Lcom/sec/ims/IEpdgListener;->onEpdgReleaseCall(I)V
    :try_end_1
    .catch Landroid/os/DeadObjectException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 569
    :try_start_2
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 566
    :catch_1
    invoke-static {}, Lcom/sec/internal/ims/core/WfcEpdgManager;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, " DeadObjectException remove dead listener."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 572
    :cond_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public onEpdgShowPopup(II)V
    .locals 3

    .line 540
    iget-object v0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$3;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    iget-object v0, v0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mListeners:Ljava/util/List;

    monitor-enter v0

    .line 541
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$3;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    iget-object p0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 542
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 543
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/IEpdgListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 545
    :try_start_1
    invoke-interface {v1, p1, p2}, Lcom/sec/ims/IEpdgListener;->onEpdgShowPopup(II)V
    :try_end_1
    .catch Landroid/os/DeadObjectException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 550
    :try_start_2
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 547
    :catch_1
    invoke-static {}, Lcom/sec/internal/ims/core/WfcEpdgManager;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, " DeadObjectException remove dead listener."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 553
    :cond_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method
