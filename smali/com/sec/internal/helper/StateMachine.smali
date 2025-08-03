.class public Lcom/sec/internal/helper/StateMachine;
.super Ljava/lang/Object;
.source "StateMachine.java"


# static fields
.field public static final HANDLED:Z = true

.field public static final NOT_HANDLED:Z = false

.field private static final SM_INIT_CMD:I = -0x2

.field private static final SM_QUIT_CMD:I = -0x1


# instance fields
.field private mName:Ljava/lang/String;

.field private mSmHandler:Lcom/sec/internal/helper/StateMachine$SmHandler;

.field private mSmThread:Landroid/os/HandlerThread;


# direct methods
.method static bridge synthetic -$$Nest$fgetmSmThread(Lcom/sec/internal/helper/StateMachine;)Landroid/os/HandlerThread;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/helper/StateMachine;->mSmThread:Landroid/os/HandlerThread;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmSmHandler(Lcom/sec/internal/helper/StateMachine;Lcom/sec/internal/helper/StateMachine$SmHandler;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/sec/internal/helper/StateMachine;->mSmHandler:Lcom/sec/internal/helper/StateMachine$SmHandler;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSmThread(Lcom/sec/internal/helper/StateMachine;Landroid/os/HandlerThread;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/sec/internal/helper/StateMachine;->mSmThread:Landroid/os/HandlerThread;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Landroid/os/Handler;)V
    .locals 0

    .line 1247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1248
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/sec/internal/helper/StateMachine;->initStateMachine(Ljava/lang/String;Landroid/os/Looper;)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Landroid/os/Looper;)V
    .locals 0

    .line 1238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1239
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/helper/StateMachine;->initStateMachine(Ljava/lang/String;Landroid/os/Looper;)V

    return-void
.end method

.method private initStateMachine(Ljava/lang/String;Landroid/os/Looper;)V
    .locals 1

    .line 1229
    iput-object p1, p0, Lcom/sec/internal/helper/StateMachine;->mName:Ljava/lang/String;

    .line 1230
    new-instance p1, Lcom/sec/internal/helper/StateMachine$SmHandler;

    const/4 v0, 0x0

    invoke-direct {p1, p2, p0, v0}, Lcom/sec/internal/helper/StateMachine$SmHandler;-><init>(Landroid/os/Looper;Lcom/sec/internal/helper/StateMachine;Lcom/sec/internal/helper/StateMachine$SmHandler-IA;)V

    iput-object p1, p0, Lcom/sec/internal/helper/StateMachine;->mSmHandler:Lcom/sec/internal/helper/StateMachine$SmHandler;

    return-void
.end method


# virtual methods
.method protected final addState(Lcom/sec/internal/helper/State;)V
    .locals 1

    .line 1284
    iget-object p0, p0, Lcom/sec/internal/helper/StateMachine;->mSmHandler:Lcom/sec/internal/helper/StateMachine$SmHandler;

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/sec/internal/helper/StateMachine$SmHandler;->-$$Nest$maddState(Lcom/sec/internal/helper/StateMachine$SmHandler;Lcom/sec/internal/helper/State;Lcom/sec/internal/helper/State;)Lcom/sec/internal/helper/StateMachine$SmHandler$StateInfo;

    return-void
.end method

.method protected final addState(Lcom/sec/internal/helper/State;Lcom/sec/internal/helper/State;)V
    .locals 0

    .line 1275
    iget-object p0, p0, Lcom/sec/internal/helper/StateMachine;->mSmHandler:Lcom/sec/internal/helper/StateMachine$SmHandler;

    invoke-static {p0, p1, p2}, Lcom/sec/internal/helper/StateMachine$SmHandler;->-$$Nest$maddState(Lcom/sec/internal/helper/StateMachine$SmHandler;Lcom/sec/internal/helper/State;Lcom/sec/internal/helper/State;)Lcom/sec/internal/helper/StateMachine$SmHandler$StateInfo;

    return-void
.end method

.method public final deferMessage(Landroid/os/Message;)V
    .locals 0

    .line 1335
    iget-object p0, p0, Lcom/sec/internal/helper/StateMachine;->mSmHandler:Lcom/sec/internal/helper/StateMachine$SmHandler;

    invoke-static {p0, p1}, Lcom/sec/internal/helper/StateMachine$SmHandler;->-$$Nest$mdeferMessage(Lcom/sec/internal/helper/StateMachine$SmHandler;Landroid/os/Message;)V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    .line 1834
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sec/internal/helper/StateMachine;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ":"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1835
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " total records="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/helper/StateMachine;->getLogRecCount()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 1836
    :goto_0
    invoke-virtual {p0}, Lcom/sec/internal/helper/StateMachine;->getLogRecSize()I

    move-result p3

    if-ge p1, p3, :cond_1

    .line 1837
    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->getLogRec(I)Lcom/sec/internal/helper/StateMachine$LogRec;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 1841
    invoke-virtual {p3}, Lcom/sec/internal/helper/StateMachine$LogRec;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    .line 1840
    :cond_0
    const-string p3, "NULL"

    .line 1844
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " rec["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1845
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 1849
    :cond_1
    invoke-virtual {p0}, Lcom/sec/internal/helper/StateMachine;->getCurrentState()Lcom/sec/internal/helper/IState;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 1851
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "curState="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lcom/sec/internal/helper/IState;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public final getCurrentState()Lcom/sec/internal/helper/IState;
    .locals 0

    .line 1302
    iget-object p0, p0, Lcom/sec/internal/helper/StateMachine;->mSmHandler:Lcom/sec/internal/helper/StateMachine$SmHandler;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1304
    :cond_0
    invoke-static {p0}, Lcom/sec/internal/helper/StateMachine$SmHandler;->-$$Nest$mgetCurrentState(Lcom/sec/internal/helper/StateMachine$SmHandler;)Lcom/sec/internal/helper/IState;

    move-result-object p0

    return-object p0
.end method

.method public final getHandler()Landroid/os/Handler;
    .locals 0

    .line 1437
    iget-object p0, p0, Lcom/sec/internal/helper/StateMachine;->mSmHandler:Lcom/sec/internal/helper/StateMachine$SmHandler;

    return-object p0
.end method

.method public final getLogRec(I)Lcom/sec/internal/helper/StateMachine$LogRec;
    .locals 0

    .line 1403
    iget-object p0, p0, Lcom/sec/internal/helper/StateMachine;->mSmHandler:Lcom/sec/internal/helper/StateMachine$SmHandler;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1405
    :cond_0
    invoke-static {p0}, Lcom/sec/internal/helper/StateMachine$SmHandler;->-$$Nest$fgetmLogRecords(Lcom/sec/internal/helper/StateMachine$SmHandler;)Lcom/sec/internal/helper/StateMachine$LogRecords;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine$LogRecords;->get(I)Lcom/sec/internal/helper/StateMachine$LogRec;

    move-result-object p0

    return-object p0
.end method

.method public final getLogRecCount()I
    .locals 0

    .line 1393
    iget-object p0, p0, Lcom/sec/internal/helper/StateMachine;->mSmHandler:Lcom/sec/internal/helper/StateMachine$SmHandler;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1395
    :cond_0
    invoke-static {p0}, Lcom/sec/internal/helper/StateMachine$SmHandler;->-$$Nest$fgetmLogRecords(Lcom/sec/internal/helper/StateMachine$SmHandler;)Lcom/sec/internal/helper/StateMachine$LogRecords;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/helper/StateMachine$LogRecords;->count()I

    move-result p0

    return p0
.end method

.method public final getLogRecSize()I
    .locals 0

    .line 1383
    iget-object p0, p0, Lcom/sec/internal/helper/StateMachine;->mSmHandler:Lcom/sec/internal/helper/StateMachine$SmHandler;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1385
    :cond_0
    invoke-static {p0}, Lcom/sec/internal/helper/StateMachine$SmHandler;->-$$Nest$fgetmLogRecords(Lcom/sec/internal/helper/StateMachine$SmHandler;)Lcom/sec/internal/helper/StateMachine$LogRecords;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/helper/StateMachine$LogRecords;->size()I

    move-result p0

    return p0
.end method

.method protected getLogRecString(Landroid/os/Message;)Ljava/lang/String;
    .locals 0

    .line 1423
    const-string p0, ""

    return-object p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    .line 1375
    iget-object p0, p0, Lcom/sec/internal/helper/StateMachine;->mName:Ljava/lang/String;

    return-object p0
.end method

.method protected getWhatToString(I)Ljava/lang/String;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method protected haltedProcessMessage(Landroid/os/Message;)V
    .locals 0

    .line 0
    return-void
.end method

.method public final hasMessages(I)Z
    .locals 0

    .line 1818
    iget-object p0, p0, Lcom/sec/internal/helper/StateMachine;->mSmHandler:Lcom/sec/internal/helper/StateMachine$SmHandler;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1821
    :cond_0
    invoke-virtual {p0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p0

    return p0
.end method

.method public log(Ljava/lang/String;)V
    .locals 0

    .line 1871
    iget-object p0, p0, Lcom/sec/internal/helper/StateMachine;->mName:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public loge(Ljava/lang/String;)V
    .locals 0

    .line 1889
    iget-object p0, p0, Lcom/sec/internal/helper/StateMachine;->mName:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public logi(Ljava/lang/String;)V
    .locals 0

    .line 1880
    iget-object p0, p0, Lcom/sec/internal/helper/StateMachine;->mName:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final obtainMessage(I)Landroid/os/Message;
    .locals 0

    .line 1452
    iget-object p0, p0, Lcom/sec/internal/helper/StateMachine;->mSmHandler:Lcom/sec/internal/helper/StateMachine$SmHandler;

    invoke-static {p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p0

    return-object p0
.end method

.method public final obtainMessage(II)Landroid/os/Message;
    .locals 1

    .line 1487
    iget-object p0, p0, Lcom/sec/internal/helper/StateMachine;->mSmHandler:Lcom/sec/internal/helper/StateMachine$SmHandler;

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object p0

    return-object p0
.end method

.method public final obtainMessage(III)Landroid/os/Message;
    .locals 0

    .line 1505
    iget-object p0, p0, Lcom/sec/internal/helper/StateMachine;->mSmHandler:Lcom/sec/internal/helper/StateMachine$SmHandler;

    invoke-static {p0, p1, p2, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object p0

    return-object p0
.end method

.method public final obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;
    .locals 0

    .line 1524
    iget-object p0, p0, Lcom/sec/internal/helper/StateMachine;->mSmHandler:Lcom/sec/internal/helper/StateMachine$SmHandler;

    invoke-static {p0, p1, p2, p3, p4}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    return-object p0
.end method

.method public final obtainMessage(ILjava/lang/Object;)Landroid/os/Message;
    .locals 0

    .line 1469
    iget-object p0, p0, Lcom/sec/internal/helper/StateMachine;->mSmHandler:Lcom/sec/internal/helper/StateMachine$SmHandler;

    invoke-static {p0, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    return-object p0
.end method

.method protected onHalting()V
    .locals 0

    .line 0
    return-void
.end method

.method protected onPostHandleMessage(Landroid/os/Message;)V
    .locals 0

    .line 0
    return-void
.end method

.method protected onPreHandleMessage(Landroid/os/Message;)V
    .locals 0

    .line 0
    return-void
.end method

.method protected onQuitting()V
    .locals 0

    .line 0
    return-void
.end method

.method public final quit()V
    .locals 0

    .line 1795
    iget-object p0, p0, Lcom/sec/internal/helper/StateMachine;->mSmHandler:Lcom/sec/internal/helper/StateMachine$SmHandler;

    if-nez p0, :cond_0

    return-void

    .line 1798
    :cond_0
    invoke-static {p0}, Lcom/sec/internal/helper/StateMachine$SmHandler;->-$$Nest$mquit(Lcom/sec/internal/helper/StateMachine$SmHandler;)V

    return-void
.end method

.method protected recordLogRec(Landroid/os/Message;)Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public final removeMessages(I)V
    .locals 0

    .line 1773
    iget-object p0, p0, Lcom/sec/internal/helper/StateMachine;->mSmHandler:Lcom/sec/internal/helper/StateMachine$SmHandler;

    if-nez p0, :cond_0

    return-void

    .line 1776
    :cond_0
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public final removeMessages(ILjava/lang/Object;)V
    .locals 0

    .line 1784
    iget-object p0, p0, Lcom/sec/internal/helper/StateMachine;->mSmHandler:Lcom/sec/internal/helper/StateMachine$SmHandler;

    if-eqz p0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 1787
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final sendMessage(I)V
    .locals 1

    .line 1534
    iget-object v0, p0, Lcom/sec/internal/helper/StateMachine;->mSmHandler:Lcom/sec/internal/helper/StateMachine$SmHandler;

    if-nez v0, :cond_0

    return-void

    .line 1537
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final sendMessage(II)V
    .locals 1

    .line 1560
    iget-object v0, p0, Lcom/sec/internal/helper/StateMachine;->mSmHandler:Lcom/sec/internal/helper/StateMachine$SmHandler;

    if-nez v0, :cond_0

    return-void

    .line 1563
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(II)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final sendMessage(III)V
    .locals 1

    .line 1573
    iget-object v0, p0, Lcom/sec/internal/helper/StateMachine;->mSmHandler:Lcom/sec/internal/helper/StateMachine$SmHandler;

    if-nez v0, :cond_0

    return-void

    .line 1576
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final sendMessage(IIILjava/lang/Object;)V
    .locals 1

    .line 1586
    iget-object v0, p0, Lcom/sec/internal/helper/StateMachine;->mSmHandler:Lcom/sec/internal/helper/StateMachine$SmHandler;

    if-nez v0, :cond_0

    return-void

    .line 1589
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final sendMessage(ILjava/lang/Object;)V
    .locals 1

    .line 1547
    iget-object v0, p0, Lcom/sec/internal/helper/StateMachine;->mSmHandler:Lcom/sec/internal/helper/StateMachine$SmHandler;

    if-nez v0, :cond_0

    return-void

    .line 1550
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final sendMessage(Landroid/os/Message;)V
    .locals 0

    .line 1599
    iget-object p0, p0, Lcom/sec/internal/helper/StateMachine;->mSmHandler:Lcom/sec/internal/helper/StateMachine$SmHandler;

    if-nez p0, :cond_0

    return-void

    .line 1602
    :cond_0
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected final sendMessageAtFrontOfQueue(I)V
    .locals 1

    .line 1692
    iget-object v0, p0, Lcom/sec/internal/helper/StateMachine;->mSmHandler:Lcom/sec/internal/helper/StateMachine$SmHandler;

    if-nez v0, :cond_0

    return-void

    .line 1695
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    return-void
.end method

.method protected final sendMessageAtFrontOfQueue(II)V
    .locals 1

    .line 1720
    iget-object v0, p0, Lcom/sec/internal/helper/StateMachine;->mSmHandler:Lcom/sec/internal/helper/StateMachine$SmHandler;

    if-nez v0, :cond_0

    return-void

    .line 1723
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(II)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    return-void
.end method

.method protected final sendMessageAtFrontOfQueue(III)V
    .locals 1

    .line 1734
    iget-object v0, p0, Lcom/sec/internal/helper/StateMachine;->mSmHandler:Lcom/sec/internal/helper/StateMachine$SmHandler;

    if-nez v0, :cond_0

    return-void

    .line 1737
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    return-void
.end method

.method protected final sendMessageAtFrontOfQueue(IIILjava/lang/Object;)V
    .locals 1

    .line 1748
    iget-object v0, p0, Lcom/sec/internal/helper/StateMachine;->mSmHandler:Lcom/sec/internal/helper/StateMachine$SmHandler;

    if-nez v0, :cond_0

    return-void

    .line 1751
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    return-void
.end method

.method protected final sendMessageAtFrontOfQueue(ILjava/lang/Object;)V
    .locals 1

    .line 1706
    iget-object v0, p0, Lcom/sec/internal/helper/StateMachine;->mSmHandler:Lcom/sec/internal/helper/StateMachine$SmHandler;

    if-nez v0, :cond_0

    return-void

    .line 1709
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    return-void
.end method

.method protected final sendMessageAtFrontOfQueue(Landroid/os/Message;)V
    .locals 0

    .line 1762
    iget-object p0, p0, Lcom/sec/internal/helper/StateMachine;->mSmHandler:Lcom/sec/internal/helper/StateMachine$SmHandler;

    if-nez p0, :cond_0

    return-void

    .line 1765
    :cond_0
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    return-void
.end method

.method public final sendMessageDelayed(IIIJ)V
    .locals 1

    .line 1651
    iget-object v0, p0, Lcom/sec/internal/helper/StateMachine;->mSmHandler:Lcom/sec/internal/helper/StateMachine$SmHandler;

    if-nez v0, :cond_0

    return-void

    .line 1654
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0, p4, p5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public final sendMessageDelayed(IIILjava/lang/Object;J)V
    .locals 1

    .line 1665
    iget-object v0, p0, Lcom/sec/internal/helper/StateMachine;->mSmHandler:Lcom/sec/internal/helper/StateMachine$SmHandler;

    if-nez v0, :cond_0

    return-void

    .line 1668
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0, p5, p6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public final sendMessageDelayed(IIJ)V
    .locals 1

    .line 1638
    iget-object v0, p0, Lcom/sec/internal/helper/StateMachine;->mSmHandler:Lcom/sec/internal/helper/StateMachine$SmHandler;

    if-nez v0, :cond_0

    return-void

    .line 1641
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(II)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0, p3, p4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public final sendMessageDelayed(IJ)V
    .locals 1

    .line 1612
    iget-object v0, p0, Lcom/sec/internal/helper/StateMachine;->mSmHandler:Lcom/sec/internal/helper/StateMachine$SmHandler;

    if-nez v0, :cond_0

    return-void

    .line 1615
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public final sendMessageDelayed(ILjava/lang/Object;J)V
    .locals 1

    .line 1625
    iget-object v0, p0, Lcom/sec/internal/helper/StateMachine;->mSmHandler:Lcom/sec/internal/helper/StateMachine$SmHandler;

    if-nez v0, :cond_0

    return-void

    .line 1628
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0, p3, p4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public final sendMessageDelayed(Landroid/os/Message;J)V
    .locals 0

    .line 1678
    iget-object p0, p0, Lcom/sec/internal/helper/StateMachine;->mSmHandler:Lcom/sec/internal/helper/StateMachine$SmHandler;

    if-nez p0, :cond_0

    return-void

    .line 1681
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method protected final setInitialState(Lcom/sec/internal/helper/State;)V
    .locals 0

    .line 1294
    iget-object p0, p0, Lcom/sec/internal/helper/StateMachine;->mSmHandler:Lcom/sec/internal/helper/StateMachine$SmHandler;

    invoke-static {p0, p1}, Lcom/sec/internal/helper/StateMachine$SmHandler;->-$$Nest$msetInitialState(Lcom/sec/internal/helper/StateMachine$SmHandler;Lcom/sec/internal/helper/State;)V

    return-void
.end method

.method public start()V
    .locals 0

    .line 1806
    iget-object p0, p0, Lcom/sec/internal/helper/StateMachine;->mSmHandler:Lcom/sec/internal/helper/StateMachine$SmHandler;

    if-nez p0, :cond_0

    return-void

    .line 1810
    :cond_0
    invoke-static {p0}, Lcom/sec/internal/helper/StateMachine$SmHandler;->-$$Nest$mcompleteConstruction(Lcom/sec/internal/helper/StateMachine$SmHandler;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1857
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 1858
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    const/4 v2, 0x0

    .line 1859
    invoke-virtual {p0, v2, v1, v2}, Lcom/sec/internal/helper/StateMachine;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1860
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 1861
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    .line 1862
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final transitionTo(Lcom/sec/internal/helper/IState;)V
    .locals 0

    .line 1322
    iget-object p0, p0, Lcom/sec/internal/helper/StateMachine;->mSmHandler:Lcom/sec/internal/helper/StateMachine$SmHandler;

    invoke-static {p0, p1}, Lcom/sec/internal/helper/StateMachine$SmHandler;->-$$Nest$mtransitionTo(Lcom/sec/internal/helper/StateMachine$SmHandler;Lcom/sec/internal/helper/IState;)V

    return-void
.end method

.method protected unhandledMessage(Landroid/os/Message;)V
    .locals 2

    .line 1344
    iget-object v0, p0, Lcom/sec/internal/helper/StateMachine;->mSmHandler:Lcom/sec/internal/helper/StateMachine$SmHandler;

    invoke-static {v0}, Lcom/sec/internal/helper/StateMachine$SmHandler;->-$$Nest$fgetmDbg(Lcom/sec/internal/helper/StateMachine$SmHandler;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " - unhandledMessage: msg.what="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->loge(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
