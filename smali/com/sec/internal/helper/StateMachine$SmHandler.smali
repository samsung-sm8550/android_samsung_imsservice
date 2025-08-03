.class Lcom/sec/internal/helper/StateMachine$SmHandler;
.super Landroid/os/Handler;
.source "StateMachine.java"


# static fields
.field private static final mSmHandlerObj:Ljava/lang/Object;


# instance fields
.field private mDbg:Z

.field private mDeferredMessages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private mDestState:Lcom/sec/internal/helper/State;

.field private mHaltingState:Lcom/sec/internal/helper/StateMachine$SmHandler$HaltingState;

.field private mHasQuit:Z

.field private mInitialState:Lcom/sec/internal/helper/State;

.field private mIsConstructionCompleted:Z

.field private mLogRecords:Lcom/sec/internal/helper/StateMachine$LogRecords;

.field private mMsg:Landroid/os/Message;

.field private mQuittingState:Lcom/sec/internal/helper/StateMachine$SmHandler$QuittingState;

.field private mSm:Lcom/sec/internal/helper/StateMachine;

.field private mStateInfo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/sec/internal/helper/State;",
            "Lcom/sec/internal/helper/StateMachine$SmHandler$StateInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mStateStack:[Lcom/sec/internal/helper/StateMachine$SmHandler$StateInfo;

.field private mStateStackTopIndex:I

.field private mTempStateStack:[Lcom/sec/internal/helper/StateMachine$SmHandler$StateInfo;

.field private mTempStateStackCount:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmDbg(Lcom/sec/internal/helper/StateMachine$SmHandler;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mDbg:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLogRecords(Lcom/sec/internal/helper/StateMachine$SmHandler;)Lcom/sec/internal/helper/StateMachine$LogRecords;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mLogRecords:Lcom/sec/internal/helper/StateMachine$LogRecords;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSm(Lcom/sec/internal/helper/StateMachine$SmHandler;)Lcom/sec/internal/helper/StateMachine;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mSm:Lcom/sec/internal/helper/StateMachine;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$maddState(Lcom/sec/internal/helper/StateMachine$SmHandler;Lcom/sec/internal/helper/State;Lcom/sec/internal/helper/State;)Lcom/sec/internal/helper/StateMachine$SmHandler$StateInfo;
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/helper/StateMachine$SmHandler;->addState(Lcom/sec/internal/helper/State;Lcom/sec/internal/helper/State;)Lcom/sec/internal/helper/StateMachine$SmHandler$StateInfo;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mcompleteConstruction(Lcom/sec/internal/helper/StateMachine$SmHandler;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/helper/StateMachine$SmHandler;->completeConstruction()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdeferMessage(Lcom/sec/internal/helper/StateMachine$SmHandler;Landroid/os/Message;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/helper/StateMachine$SmHandler;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetCurrentState(Lcom/sec/internal/helper/StateMachine$SmHandler;)Lcom/sec/internal/helper/IState;
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/helper/StateMachine$SmHandler;->getCurrentState()Lcom/sec/internal/helper/IState;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mquit(Lcom/sec/internal/helper/StateMachine$SmHandler;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/helper/StateMachine$SmHandler;->quit()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetInitialState(Lcom/sec/internal/helper/StateMachine$SmHandler;Lcom/sec/internal/helper/State;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/helper/StateMachine$SmHandler;->setInitialState(Lcom/sec/internal/helper/State;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mtransitionTo(Lcom/sec/internal/helper/StateMachine$SmHandler;Lcom/sec/internal/helper/IState;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/helper/StateMachine$SmHandler;->transitionTo(Lcom/sec/internal/helper/IState;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 632
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mSmHandlerObj:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/os/Looper;Lcom/sec/internal/helper/StateMachine;)V
    .locals 1

    .line 1167
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 p1, 0x0

    .line 622
    iput-boolean p1, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mHasQuit:Z

    .line 627
    iput-boolean p1, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mDbg:Z

    .line 642
    new-instance p1, Lcom/sec/internal/helper/StateMachine$LogRecords;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/sec/internal/helper/StateMachine$LogRecords;-><init>(Lcom/sec/internal/helper/StateMachine$LogRecords-IA;)V

    iput-object p1, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mLogRecords:Lcom/sec/internal/helper/StateMachine$LogRecords;

    const/4 p1, -0x1

    .line 657
    iput p1, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mStateStackTopIndex:I

    .line 672
    new-instance p1, Lcom/sec/internal/helper/StateMachine$SmHandler$HaltingState;

    invoke-direct {p1, p0, v0}, Lcom/sec/internal/helper/StateMachine$SmHandler$HaltingState;-><init>(Lcom/sec/internal/helper/StateMachine$SmHandler;Lcom/sec/internal/helper/StateMachine$SmHandler$HaltingState-IA;)V

    iput-object p1, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mHaltingState:Lcom/sec/internal/helper/StateMachine$SmHandler$HaltingState;

    .line 677
    new-instance p1, Lcom/sec/internal/helper/StateMachine$SmHandler$QuittingState;

    invoke-direct {p1, v0}, Lcom/sec/internal/helper/StateMachine$SmHandler$QuittingState;-><init>(Lcom/sec/internal/helper/StateMachine$SmHandler$QuittingState-IA;)V

    iput-object p1, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mQuittingState:Lcom/sec/internal/helper/StateMachine$SmHandler$QuittingState;

    .line 717
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mStateInfo:Ljava/util/HashMap;

    .line 732
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mDeferredMessages:Ljava/util/ArrayList;

    .line 1168
    iput-object p2, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mSm:Lcom/sec/internal/helper/StateMachine;

    .line 1170
    iget-object p1, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mHaltingState:Lcom/sec/internal/helper/StateMachine$SmHandler$HaltingState;

    invoke-direct {p0, p1, v0}, Lcom/sec/internal/helper/StateMachine$SmHandler;->addState(Lcom/sec/internal/helper/State;Lcom/sec/internal/helper/State;)Lcom/sec/internal/helper/StateMachine$SmHandler$StateInfo;

    .line 1171
    iget-object p1, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mQuittingState:Lcom/sec/internal/helper/StateMachine$SmHandler$QuittingState;

    invoke-direct {p0, p1, v0}, Lcom/sec/internal/helper/StateMachine$SmHandler;->addState(Lcom/sec/internal/helper/State;Lcom/sec/internal/helper/State;)Lcom/sec/internal/helper/StateMachine$SmHandler$StateInfo;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Looper;Lcom/sec/internal/helper/StateMachine;Lcom/sec/internal/helper/StateMachine$SmHandler-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/helper/StateMachine$SmHandler;-><init>(Landroid/os/Looper;Lcom/sec/internal/helper/StateMachine;)V

    return-void
.end method

.method private final addState(Lcom/sec/internal/helper/State;Lcom/sec/internal/helper/State;)Lcom/sec/internal/helper/StateMachine$SmHandler$StateInfo;
    .locals 3

    .line 1130
    iget-boolean v0, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mDbg:Z

    if-eqz v0, :cond_1

    .line 1131
    iget-object v0, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mSm:Lcom/sec/internal/helper/StateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addStateInternal: E state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/helper/State;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",parent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_0

    .line 1132
    const-string v2, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/sec/internal/helper/State;->getName()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1131
    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/StateMachine;->log(Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x0

    if-eqz p2, :cond_2

    .line 1136
    iget-object v1, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mStateInfo:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/helper/StateMachine$SmHandler$StateInfo;

    if-nez v1, :cond_3

    .line 1139
    invoke-direct {p0, p2, v0}, Lcom/sec/internal/helper/StateMachine$SmHandler;->addState(Lcom/sec/internal/helper/State;Lcom/sec/internal/helper/State;)Lcom/sec/internal/helper/StateMachine$SmHandler$StateInfo;

    move-result-object v1

    goto :goto_1

    :cond_2
    move-object v1, v0

    .line 1142
    :cond_3
    :goto_1
    iget-object p2, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mStateInfo:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sec/internal/helper/StateMachine$SmHandler$StateInfo;

    if-nez p2, :cond_4

    .line 1144
    new-instance p2, Lcom/sec/internal/helper/StateMachine$SmHandler$StateInfo;

    invoke-direct {p2, v0}, Lcom/sec/internal/helper/StateMachine$SmHandler$StateInfo;-><init>(Lcom/sec/internal/helper/StateMachine$SmHandler$StateInfo-IA;)V

    .line 1145
    iget-object v0, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mStateInfo:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1149
    :cond_4
    iget-object v0, p2, Lcom/sec/internal/helper/StateMachine$SmHandler$StateInfo;->parentStateInfo:Lcom/sec/internal/helper/StateMachine$SmHandler$StateInfo;

    if-eqz v0, :cond_6

    if-ne v0, v1, :cond_5

    goto :goto_2

    .line 1151
    :cond_5
    new-instance p0, Ljava/lang/RuntimeException;

    const-string/jumbo p1, "state already added"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1153
    :cond_6
    :goto_2
    iput-object p1, p2, Lcom/sec/internal/helper/StateMachine$SmHandler$StateInfo;->state:Lcom/sec/internal/helper/State;

    .line 1154
    iput-object v1, p2, Lcom/sec/internal/helper/StateMachine$SmHandler$StateInfo;->parentStateInfo:Lcom/sec/internal/helper/StateMachine$SmHandler$StateInfo;

    const/4 p1, 0x0

    .line 1155
    iput-boolean p1, p2, Lcom/sec/internal/helper/StateMachine$SmHandler$StateInfo;->active:Z

    .line 1156
    iget-boolean p1, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mDbg:Z

    if-eqz p1, :cond_7

    iget-object p0, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mSm:Lcom/sec/internal/helper/StateMachine;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "addStateInternal: X stateInfo: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->log(Ljava/lang/String;)V

    :cond_7
    return-object p2
.end method

.method private final cleanupAfterQuitting()V
    .locals 2

    .line 899
    iget-object v0, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mSm:Lcom/sec/internal/helper/StateMachine;

    invoke-static {v0}, Lcom/sec/internal/helper/StateMachine;->-$$Nest$fgetmSmThread(Lcom/sec/internal/helper/StateMachine;)Landroid/os/HandlerThread;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 901
    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 902
    iget-object v0, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mSm:Lcom/sec/internal/helper/StateMachine;

    invoke-static {v0, v1}, Lcom/sec/internal/helper/StateMachine;->-$$Nest$fputmSmThread(Lcom/sec/internal/helper/StateMachine;Landroid/os/HandlerThread;)V

    .line 905
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mSm:Lcom/sec/internal/helper/StateMachine;

    invoke-static {v0, v1}, Lcom/sec/internal/helper/StateMachine;->-$$Nest$fputmSmHandler(Lcom/sec/internal/helper/StateMachine;Lcom/sec/internal/helper/StateMachine$SmHandler;)V

    .line 906
    iput-object v1, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mSm:Lcom/sec/internal/helper/StateMachine;

    .line 907
    iput-object v1, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mMsg:Landroid/os/Message;

    .line 908
    iget-object v0, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mLogRecords:Lcom/sec/internal/helper/StateMachine$LogRecords;

    invoke-virtual {v0}, Lcom/sec/internal/helper/StateMachine$LogRecords;->cleanup()V

    .line 909
    iput-object v1, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mStateStack:[Lcom/sec/internal/helper/StateMachine$SmHandler$StateInfo;

    .line 910
    iput-object v1, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mTempStateStack:[Lcom/sec/internal/helper/StateMachine$SmHandler$StateInfo;

    .line 911
    iget-object v0, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mStateInfo:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 912
    iput-object v1, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mInitialState:Lcom/sec/internal/helper/State;

    .line 913
    iput-object v1, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mDestState:Lcom/sec/internal/helper/State;

    .line 914
    iget-object v0, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mDeferredMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x1

    .line 915
    iput-boolean v0, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mHasQuit:Z

    return-void
.end method

.method private final completeConstruction()V
    .locals 5

    .line 922
    iget-boolean v0, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mDbg:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mSm:Lcom/sec/internal/helper/StateMachine;

    const-string v1, "completeConstruction: E"

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/StateMachine;->log(Ljava/lang/String;)V

    .line 929
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mStateInfo:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/helper/StateMachine$SmHandler$StateInfo;

    move v4, v1

    :goto_1
    if-eqz v3, :cond_2

    .line 932
    iget-object v3, v3, Lcom/sec/internal/helper/StateMachine$SmHandler$StateInfo;->parentStateInfo:Lcom/sec/internal/helper/StateMachine$SmHandler$StateInfo;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    if-ge v2, v4, :cond_1

    move v2, v4

    goto :goto_0

    .line 938
    :cond_3
    iget-boolean v0, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mDbg:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mSm:Lcom/sec/internal/helper/StateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "completeConstruction: maxDepth="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/StateMachine;->log(Ljava/lang/String;)V

    .line 940
    :cond_4
    new-array v0, v2, [Lcom/sec/internal/helper/StateMachine$SmHandler$StateInfo;

    iput-object v0, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mStateStack:[Lcom/sec/internal/helper/StateMachine$SmHandler$StateInfo;

    .line 941
    new-array v0, v2, [Lcom/sec/internal/helper/StateMachine$SmHandler$StateInfo;

    iput-object v0, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mTempStateStack:[Lcom/sec/internal/helper/StateMachine$SmHandler$StateInfo;

    .line 942
    invoke-direct {p0}, Lcom/sec/internal/helper/StateMachine$SmHandler;->setupInitialStateStack()V

    const/4 v0, -0x2

    .line 945
    sget-object v1, Lcom/sec/internal/helper/StateMachine$SmHandler;->mSmHandlerObj:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 947
    iget-boolean v0, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mDbg:Z

    if-eqz v0, :cond_5

    iget-object p0, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mSm:Lcom/sec/internal/helper/StateMachine;

    const-string v0, "completeConstruction: X"

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->log(Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method private final deferMessage(Landroid/os/Message;)V
    .locals 3

    .line 1194
    iget-boolean v0, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mDbg:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mSm:Lcom/sec/internal/helper/StateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deferMessage: msg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/StateMachine;->log(Ljava/lang/String;)V

    .line 1197
    :cond_0
    invoke-virtual {p0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1198
    invoke-virtual {v0, p1}, Landroid/os/Message;->copyFrom(Landroid/os/Message;)V

    .line 1200
    iget-object p0, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mDeferredMessages:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private final getCurrentState()Lcom/sec/internal/helper/IState;
    .locals 1

    .line 1114
    iget v0, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mStateStackTopIndex:I

    if-ltz v0, :cond_1

    iget-object p0, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mStateStack:[Lcom/sec/internal/helper/StateMachine$SmHandler$StateInfo;

    if-eqz p0, :cond_1

    aget-object p0, p0, v0

    if-nez p0, :cond_0

    goto :goto_0

    .line 1117
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/helper/StateMachine$SmHandler$StateInfo;->state:Lcom/sec/internal/helper/State;

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private final invokeEnterMethods(I)V
    .locals 3

    .line 1005
    :goto_0
    iget v0, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mStateStackTopIndex:I

    if-gt p1, v0, :cond_1

    .line 1006
    iget-boolean v0, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mDbg:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mSm:Lcom/sec/internal/helper/StateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invokeEnterMethods: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mStateStack:[Lcom/sec/internal/helper/StateMachine$SmHandler$StateInfo;

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/sec/internal/helper/StateMachine$SmHandler$StateInfo;->state:Lcom/sec/internal/helper/State;

    invoke-virtual {v2}, Lcom/sec/internal/helper/State;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/StateMachine;->log(Ljava/lang/String;)V

    .line 1007
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mStateStack:[Lcom/sec/internal/helper/StateMachine$SmHandler$StateInfo;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/sec/internal/helper/StateMachine$SmHandler$StateInfo;->state:Lcom/sec/internal/helper/State;

    invoke-virtual {v0}, Lcom/sec/internal/helper/State;->enter()V

    .line 1008
    iget-object v0, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mStateStack:[Lcom/sec/internal/helper/StateMachine$SmHandler$StateInfo;

    aget-object v0, v0, p1

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sec/internal/helper/StateMachine$SmHandler$StateInfo;->active:Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private final invokeExitMethods(Lcom/sec/internal/helper/StateMachine$SmHandler$StateInfo;)V
    .locals 4

    .line 991
    :goto_0
    iget v0, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mStateStackTopIndex:I

    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mStateStack:[Lcom/sec/internal/helper/StateMachine$SmHandler$StateInfo;

    aget-object v0, v1, v0

    if-eq v0, p1, :cond_1

    .line 993
    iget-object v0, v0, Lcom/sec/internal/helper/StateMachine$SmHandler$StateInfo;->state:Lcom/sec/internal/helper/State;

    .line 994
    iget-boolean v1, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mDbg:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mSm:Lcom/sec/internal/helper/StateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invokeExitMethods: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/helper/State;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/helper/StateMachine;->log(Ljava/lang/String;)V

    .line 995
    :cond_0
    invoke-virtual {v0}, Lcom/sec/internal/helper/State;->exit()V

    .line 996
    iget-object v0, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mStateStack:[Lcom/sec/internal/helper/StateMachine$SmHandler$StateInfo;

    iget v1, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mStateStackTopIndex:I

    aget-object v0, v0, v1

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/sec/internal/helper/StateMachine$SmHandler$StateInfo;->active:Z

    add-int/lit8 v1, v1, -0x1

    .line 997
    iput v1, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mStateStackTopIndex:I

    goto :goto_0

    :cond_1
    return-void
.end method

.method private final isQuit(Landroid/os/Message;)Z
    .locals 1

    .line 1215
    iget p0, p1, Landroid/os/Message;->what:I

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    sget-object p1, Lcom/sec/internal/helper/StateMachine$SmHandler;->mSmHandlerObj:Ljava/lang/Object;

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private final moveDeferredMessageAtFrontOfQueue()V
    .locals 5

    .line 1022
    iget-object v0, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mDeferredMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 1023
    iget-object v1, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mDeferredMessages:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Message;

    .line 1024
    iget-boolean v2, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mDbg:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mSm:Lcom/sec/internal/helper/StateMachine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "moveDeferredMessageAtFrontOfQueue; what="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/helper/StateMachine;->log(Ljava/lang/String;)V

    .line 1025
    :cond_0
    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1027
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mDeferredMessages:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private final moveTempStateStackToStateStack()I
    .locals 6

    .line 1038
    iget v0, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mStateStackTopIndex:I

    add-int/lit8 v0, v0, 0x1

    .line 1039
    iget v1, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mTempStateStackCount:I

    add-int/lit8 v1, v1, -0x1

    move v2, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 1042
    iget-boolean v3, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mDbg:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mSm:Lcom/sec/internal/helper/StateMachine;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "moveTempStackToStateStack: i="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",j="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/helper/StateMachine;->log(Ljava/lang/String;)V

    .line 1043
    :cond_0
    iget-object v3, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mStateStack:[Lcom/sec/internal/helper/StateMachine$SmHandler$StateInfo;

    iget-object v4, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mTempStateStack:[Lcom/sec/internal/helper/StateMachine$SmHandler$StateInfo;

    aget-object v4, v4, v1

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v2, -0x1

    .line 1048
    iput v2, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mStateStackTopIndex:I

    .line 1049
    iget-boolean v1, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mDbg:Z

    if-eqz v1, :cond_2

    .line 1050
    iget-object v1, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mSm:Lcom/sec/internal/helper/StateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "moveTempStackToStateStack: X mStateStackTop="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mStateStackTopIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",startingIndex="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",Top="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mStateStack:[Lcom/sec/internal/helper/StateMachine$SmHandler$StateInfo;

    iget p0, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mStateStackTopIndex:I

    aget-object p0, v3, p0

    iget-object p0, p0, Lcom/sec/internal/helper/StateMachine$SmHandler$StateInfo;->state:Lcom/sec/internal/helper/State;

    .line 1052
    invoke-virtual {p0}, Lcom/sec/internal/helper/State;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1050
    invoke-virtual {v1, p0}, Lcom/sec/internal/helper/StateMachine;->log(Ljava/lang/String;)V

    :cond_2
    return v0
.end method

.method private performTransitions(Lcom/sec/internal/helper/State;Landroid/os/Message;)V
    .locals 9

    .line 805
    iget-object v0, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mSm:Lcom/sec/internal/helper/StateMachine;

    if-nez v0, :cond_0

    return-void

    .line 812
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mStateStack:[Lcom/sec/internal/helper/StateMachine$SmHandler$StateInfo;

    iget v2, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mStateStackTopIndex:I

    aget-object v1, v1, v2

    iget-object v7, v1, Lcom/sec/internal/helper/StateMachine$SmHandler$StateInfo;->state:Lcom/sec/internal/helper/State;

    .line 819
    iget-object v1, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mMsg:Landroid/os/Message;

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/StateMachine;->recordLogRec(Landroid/os/Message;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p2, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    sget-object v0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mSmHandlerObj:Ljava/lang/Object;

    if-eq p2, v0, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    .line 821
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mLogRecords:Lcom/sec/internal/helper/StateMachine$LogRecords;

    invoke-virtual {v0}, Lcom/sec/internal/helper/StateMachine$LogRecords;->logOnlyTransitions()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 823
    iget-object p2, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mDestState:Lcom/sec/internal/helper/State;

    if-eqz p2, :cond_3

    .line 824
    iget-object v2, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mLogRecords:Lcom/sec/internal/helper/StateMachine$LogRecords;

    iget-object v3, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mSm:Lcom/sec/internal/helper/StateMachine;

    iget-object v4, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mMsg:Landroid/os/Message;

    invoke-virtual {v3, v4}, Lcom/sec/internal/helper/StateMachine;->getLogRecString(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v5

    iget-object v8, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mDestState:Lcom/sec/internal/helper/State;

    move-object v6, p1

    invoke-virtual/range {v2 .. v8}, Lcom/sec/internal/helper/StateMachine$LogRecords;->add(Lcom/sec/internal/helper/StateMachine;Landroid/os/Message;Ljava/lang/String;Lcom/sec/internal/helper/IState;Lcom/sec/internal/helper/IState;Lcom/sec/internal/helper/IState;)V

    goto :goto_1

    :cond_2
    if-eqz p2, :cond_3

    .line 829
    iget-object v2, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mLogRecords:Lcom/sec/internal/helper/StateMachine$LogRecords;

    iget-object v3, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mSm:Lcom/sec/internal/helper/StateMachine;

    iget-object v4, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mMsg:Landroid/os/Message;

    invoke-virtual {v3, v4}, Lcom/sec/internal/helper/StateMachine;->getLogRecString(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v5

    iget-object v8, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mDestState:Lcom/sec/internal/helper/State;

    move-object v6, p1

    invoke-virtual/range {v2 .. v8}, Lcom/sec/internal/helper/StateMachine$LogRecords;->add(Lcom/sec/internal/helper/StateMachine;Landroid/os/Message;Ljava/lang/String;Lcom/sec/internal/helper/IState;Lcom/sec/internal/helper/IState;Lcom/sec/internal/helper/IState;)V

    .line 833
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mDestState:Lcom/sec/internal/helper/State;

    if-eqz p1, :cond_6

    .line 839
    :goto_2
    iget-boolean p2, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mDbg:Z

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mSm:Lcom/sec/internal/helper/StateMachine;

    if-eqz p2, :cond_4

    .line 840
    const-string v0, "handleMessage: new destination call exit/enter"

    invoke-virtual {p2, v0}, Lcom/sec/internal/helper/StateMachine;->log(Ljava/lang/String;)V

    .line 847
    :cond_4
    invoke-direct {p0, p1}, Lcom/sec/internal/helper/StateMachine$SmHandler;->setupTempStateStackWithStatesToEnter(Lcom/sec/internal/helper/State;)Lcom/sec/internal/helper/StateMachine$SmHandler$StateInfo;

    move-result-object p2

    .line 848
    monitor-enter p0

    .line 849
    :try_start_0
    invoke-direct {p0, p2}, Lcom/sec/internal/helper/StateMachine$SmHandler;->invokeExitMethods(Lcom/sec/internal/helper/StateMachine$SmHandler$StateInfo;)V

    .line 850
    invoke-direct {p0}, Lcom/sec/internal/helper/StateMachine$SmHandler;->moveTempStateStackToStateStack()I

    move-result p2

    .line 851
    invoke-direct {p0, p2}, Lcom/sec/internal/helper/StateMachine$SmHandler;->invokeEnterMethods(I)V

    .line 852
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 860
    invoke-direct {p0}, Lcom/sec/internal/helper/StateMachine$SmHandler;->moveDeferredMessageAtFrontOfQueue()V

    .line 862
    iget-object p2, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mDestState:Lcom/sec/internal/helper/State;

    if-eq p1, p2, :cond_5

    move-object p1, p2

    goto :goto_2

    :cond_5
    const/4 p2, 0x0

    .line 870
    iput-object p2, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mDestState:Lcom/sec/internal/helper/State;

    goto :goto_3

    :catchall_0
    move-exception p1

    .line 852
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_6
    :goto_3
    if-eqz p1, :cond_8

    .line 878
    iget-object p2, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mQuittingState:Lcom/sec/internal/helper/StateMachine$SmHandler$QuittingState;

    if-ne p1, p2, :cond_7

    .line 882
    iget-object p1, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mSm:Lcom/sec/internal/helper/StateMachine;

    invoke-virtual {p1}, Lcom/sec/internal/helper/StateMachine;->onQuitting()V

    .line 883
    invoke-direct {p0}, Lcom/sec/internal/helper/StateMachine$SmHandler;->cleanupAfterQuitting()V

    goto :goto_4

    .line 884
    :cond_7
    iget-object p2, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mHaltingState:Lcom/sec/internal/helper/StateMachine$SmHandler$HaltingState;

    if-ne p1, p2, :cond_8

    .line 890
    iget-object p0, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mSm:Lcom/sec/internal/helper/StateMachine;

    invoke-virtual {p0}, Lcom/sec/internal/helper/StateMachine;->onHalting()V

    :cond_8
    :goto_4
    return-void
.end method

.method private final processMsg(Landroid/os/Message;)Lcom/sec/internal/helper/State;
    .locals 5

    .line 958
    iget-object v0, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mStateStack:[Lcom/sec/internal/helper/StateMachine$SmHandler$StateInfo;

    iget v1, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mStateStackTopIndex:I

    aget-object v0, v0, v1

    .line 959
    iget-boolean v1, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mDbg:Z

    const-string/jumbo v2, "processMsg: "

    if-eqz v1, :cond_0

    .line 960
    iget-object v1, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mSm:Lcom/sec/internal/helper/StateMachine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/sec/internal/helper/StateMachine$SmHandler$StateInfo;->state:Lcom/sec/internal/helper/State;

    invoke-virtual {v4}, Lcom/sec/internal/helper/State;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sec/internal/helper/StateMachine;->log(Ljava/lang/String;)V

    .line 963
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/internal/helper/StateMachine$SmHandler;->isQuit(Landroid/os/Message;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 964
    iget-object p1, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mQuittingState:Lcom/sec/internal/helper/StateMachine$SmHandler$QuittingState;

    invoke-direct {p0, p1}, Lcom/sec/internal/helper/StateMachine$SmHandler;->transitionTo(Lcom/sec/internal/helper/IState;)V

    goto :goto_1

    .line 966
    :cond_1
    :goto_0
    iget-object v1, v0, Lcom/sec/internal/helper/StateMachine$SmHandler$StateInfo;->state:Lcom/sec/internal/helper/State;

    invoke-virtual {v1, p1}, Lcom/sec/internal/helper/State;->processMessage(Landroid/os/Message;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 970
    iget-object v0, v0, Lcom/sec/internal/helper/StateMachine$SmHandler$StateInfo;->parentStateInfo:Lcom/sec/internal/helper/StateMachine$SmHandler$StateInfo;

    if-nez v0, :cond_2

    .line 975
    iget-object p0, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mSm:Lcom/sec/internal/helper/StateMachine;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->unhandledMessage(Landroid/os/Message;)V

    goto :goto_1

    .line 978
    :cond_2
    iget-boolean v1, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mDbg:Z

    if-eqz v1, :cond_1

    .line 979
    iget-object v1, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mSm:Lcom/sec/internal/helper/StateMachine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/sec/internal/helper/StateMachine$SmHandler$StateInfo;->state:Lcom/sec/internal/helper/State;

    invoke-virtual {v4}, Lcom/sec/internal/helper/State;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sec/internal/helper/StateMachine;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    .line 983
    iget-object p0, v0, Lcom/sec/internal/helper/StateMachine$SmHandler$StateInfo;->state:Lcom/sec/internal/helper/State;

    goto :goto_2

    :cond_4
    const/4 p0, 0x0

    :goto_2
    return-object p0
.end method

.method private final quit()V
    .locals 2

    .line 1207
    iget-boolean v0, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mDbg:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mSm:Lcom/sec/internal/helper/StateMachine;

    const-string/jumbo v1, "quit:"

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/StateMachine;->log(Ljava/lang/String;)V

    :cond_0
    const/4 v0, -0x1

    .line 1208
    sget-object v1, Lcom/sec/internal/helper/StateMachine$SmHandler;->mSmHandlerObj:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private final setInitialState(Lcom/sec/internal/helper/State;)V
    .locals 3

    .line 1178
    iget-boolean v0, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mDbg:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mSm:Lcom/sec/internal/helper/StateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setInitialState: initialState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/helper/State;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/StateMachine;->log(Ljava/lang/String;)V

    .line 1179
    :cond_0
    iput-object p1, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mInitialState:Lcom/sec/internal/helper/State;

    return-void
.end method

.method private final setupInitialStateStack()V
    .locals 3

    .line 1093
    iget-boolean v0, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mDbg:Z

    if-eqz v0, :cond_0

    .line 1094
    iget-object v0, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mSm:Lcom/sec/internal/helper/StateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setupInitialStateStack: E mInitialState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mInitialState:Lcom/sec/internal/helper/State;

    invoke-virtual {v2}, Lcom/sec/internal/helper/State;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/StateMachine;->log(Ljava/lang/String;)V

    .line 1097
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mStateInfo:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mInitialState:Lcom/sec/internal/helper/State;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/helper/StateMachine$SmHandler$StateInfo;

    const/4 v1, 0x0

    .line 1098
    iput v1, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mTempStateStackCount:I

    :goto_0
    if-eqz v0, :cond_1

    .line 1099
    iget-object v1, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mTempStateStack:[Lcom/sec/internal/helper/StateMachine$SmHandler$StateInfo;

    iget v2, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mTempStateStackCount:I

    aput-object v0, v1, v2

    .line 1100
    iget-object v0, v0, Lcom/sec/internal/helper/StateMachine$SmHandler$StateInfo;->parentStateInfo:Lcom/sec/internal/helper/StateMachine$SmHandler$StateInfo;

    add-int/lit8 v2, v2, 0x1

    .line 1098
    iput v2, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mTempStateStackCount:I

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    .line 1104
    iput v0, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mStateStackTopIndex:I

    .line 1106
    invoke-direct {p0}, Lcom/sec/internal/helper/StateMachine$SmHandler;->moveTempStateStackToStateStack()I

    return-void
.end method

.method private final setupTempStateStackWithStatesToEnter(Lcom/sec/internal/helper/State;)Lcom/sec/internal/helper/StateMachine$SmHandler$StateInfo;
    .locals 3

    const/4 v0, 0x0

    .line 1075
    iput v0, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mTempStateStackCount:I

    .line 1076
    iget-object v0, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mStateInfo:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/helper/StateMachine$SmHandler$StateInfo;

    .line 1078
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mTempStateStack:[Lcom/sec/internal/helper/StateMachine$SmHandler$StateInfo;

    iget v1, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mTempStateStackCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mTempStateStackCount:I

    aput-object p1, v0, v1

    .line 1079
    iget-object p1, p1, Lcom/sec/internal/helper/StateMachine$SmHandler$StateInfo;->parentStateInfo:Lcom/sec/internal/helper/StateMachine$SmHandler$StateInfo;

    if-eqz p1, :cond_1

    .line 1080
    iget-boolean v0, p1, Lcom/sec/internal/helper/StateMachine$SmHandler$StateInfo;->active:Z

    if-eqz v0, :cond_0

    .line 1082
    :cond_1
    iget-boolean v0, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mDbg:Z

    if-eqz v0, :cond_2

    .line 1083
    iget-object v0, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mSm:Lcom/sec/internal/helper/StateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setupTempStateStackWithStatesToEnter: X mTempStateStackCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mTempStateStackCount:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ",curStateInfo: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sec/internal/helper/StateMachine;->log(Ljava/lang/String;)V

    :cond_2
    return-object p1
.end method

.method private final transitionTo(Lcom/sec/internal/helper/IState;)V
    .locals 2

    .line 1186
    check-cast p1, Lcom/sec/internal/helper/State;

    iput-object p1, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mDestState:Lcom/sec/internal/helper/State;

    .line 1187
    iget-boolean p1, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mDbg:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mSm:Lcom/sec/internal/helper/StateMachine;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "transitionTo: destState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mDestState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0}, Lcom/sec/internal/helper/State;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sec/internal/helper/StateMachine;->log(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 763
    iget-boolean v0, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mHasQuit:Z

    if-nez v0, :cond_5

    .line 764
    iget-object v0, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mSm:Lcom/sec/internal/helper/StateMachine;

    const/4 v1, -0x1

    const/4 v2, -0x2

    if-eqz v0, :cond_0

    iget v3, p1, Landroid/os/Message;->what:I

    if-eq v3, v2, :cond_0

    if-eq v3, v1, :cond_0

    .line 765
    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/StateMachine;->onPreHandleMessage(Landroid/os/Message;)V

    .line 768
    :cond_0
    iget-boolean v0, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mDbg:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mSm:Lcom/sec/internal/helper/StateMachine;

    if-eqz v0, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMessage: E msg.what="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sec/internal/helper/StateMachine;->log(Ljava/lang/String;)V

    .line 771
    :cond_1
    iput-object p1, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mMsg:Landroid/os/Message;

    .line 775
    iget-boolean v0, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mIsConstructionCompleted:Z

    if-eqz v0, :cond_2

    .line 777
    invoke-direct {p0, p1}, Lcom/sec/internal/helper/StateMachine$SmHandler;->processMsg(Landroid/os/Message;)Lcom/sec/internal/helper/State;

    move-result-object v0

    goto :goto_0

    :cond_2
    if-nez v0, :cond_4

    .line 778
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v2, :cond_4

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    sget-object v3, Lcom/sec/internal/helper/StateMachine$SmHandler;->mSmHandlerObj:Ljava/lang/Object;

    if-ne v0, v3, :cond_4

    const/4 v0, 0x1

    .line 781
    iput-boolean v0, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mIsConstructionCompleted:Z

    const/4 v0, 0x0

    .line 782
    invoke-direct {p0, v0}, Lcom/sec/internal/helper/StateMachine$SmHandler;->invokeEnterMethods(I)V

    const/4 v0, 0x0

    .line 788
    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/sec/internal/helper/StateMachine$SmHandler;->performTransitions(Lcom/sec/internal/helper/State;Landroid/os/Message;)V

    .line 791
    iget-boolean v0, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mDbg:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mSm:Lcom/sec/internal/helper/StateMachine;

    if-eqz v0, :cond_3

    const-string v3, "handleMessage: X"

    invoke-virtual {v0, v3}, Lcom/sec/internal/helper/StateMachine;->log(Ljava/lang/String;)V

    .line 793
    :cond_3
    iget-object p0, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mSm:Lcom/sec/internal/helper/StateMachine;

    if-eqz p0, :cond_5

    iget v0, p1, Landroid/os/Message;->what:I

    if-eq v0, v2, :cond_5

    if-eq v0, v1, :cond_5

    .line 794
    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->onPostHandleMessage(Landroid/os/Message;)V

    goto :goto_1

    .line 784
    :cond_4
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StateMachine.handleMessage: The start method not called, received msg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    :goto_1
    return-void
.end method
