.class Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule$5;
.super Ljava/lang/Object;
.source "UtServiceModule.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;)V
    .locals 0

    .line 1252
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule$5;->this$0:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataConnectionStateChanged(IZI)V
    .locals 0

    .line 1256
    invoke-static {p3}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 1261
    :cond_0
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->isSimAvailable()Z

    move-result p1

    if-nez p1, :cond_1

    .line 1262
    const-string p0, "UtServiceModule"

    const-string/jumbo p1, "onDataConnectionStateChanged::SIM is not available. skip querySimServDoc"

    invoke-static {p0, p3, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 1266
    :cond_1
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule$5;->this$0:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->-$$Nest$fgetmPdnController(Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;)Lcom/sec/internal/interfaces/ims/core/IPdnController;

    move-result-object p1

    invoke-interface {p1, p3}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->getMobileDataRegState(I)I

    move-result p1

    if-nez p1, :cond_2

    .line 1267
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule$5;->this$0:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    invoke-virtual {p1, p3}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->needToGetSimservDocOnBootup(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1268
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule$5;->this$0:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    invoke-virtual {p0, p3}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->querySimServDoc(I)I

    :cond_2
    return-void
.end method

.method public onEpdgConnected(ILjava/lang/String;)V
    .locals 1

    .line 1275
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule$5;->this$0:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    invoke-static {p2}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->-$$Nest$mperformExemptUtService(Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;)V

    .line 1277
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule$5;->this$0:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    invoke-virtual {p2, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->needToGetSimservDocOnBootup(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1278
    const-string p2, "UtServiceModule"

    const-string/jumbo v0, "onEpdgConnected"

    invoke-static {p2, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1279
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule$5;->this$0:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->querySimServDoc(I)I

    :cond_0
    return-void
.end method

.method public onEpdgDisconnected(ILjava/lang/String;)V
    .locals 0

    .line 1285
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule$5;->this$0:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->-$$Nest$mperformExemptUtService(Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;)V

    return-void
.end method

.method public onPreciseDataConnectionStateChanged(ILandroid/telephony/PreciseDataConnectionState;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 1293
    invoke-virtual {p2}, Landroid/telephony/PreciseDataConnectionState;->getDataConnectionState()I

    move-result v0

    if-nez v0, :cond_0

    .line 1295
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule$5;->this$0:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->-$$Nest$fgetmPdnController(Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;)Lcom/sec/internal/interfaces/ims/core/IPdnController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->isDisconnecting()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1296
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule$5;->this$0:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->-$$Nest$fgetsmUtMap(Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;)Ljava/util/HashMap;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->handlePdnFail(Landroid/telephony/PreciseDataConnectionState;)V

    :cond_0
    return-void
.end method
