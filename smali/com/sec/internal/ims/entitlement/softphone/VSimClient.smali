.class public Lcom/sec/internal/ims/entitlement/softphone/VSimClient;
.super Lcom/sec/internal/helper/StateMachine;
.source "VSimClient.java"


# static fields
.field private static sNextSerial:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field protected final mDefaultState:Lcom/sec/internal/helper/State;


# direct methods
.method static bridge synthetic -$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/entitlement/softphone/VSimClient;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/VSimClient;->LOG_TAG:Ljava/lang/String;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 18
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/entitlement/softphone/VSimClient;->sNextSerial:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .locals 1

    .line 21
    const-string v0, "VSimClient"

    invoke-direct {p0, v0, p1}, Lcom/sec/internal/helper/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    .line 53
    new-instance p1, Lcom/sec/internal/ims/entitlement/softphone/VSimClient$DefaultState;

    invoke-direct {p1, p0}, Lcom/sec/internal/ims/entitlement/softphone/VSimClient$DefaultState;-><init>(Lcom/sec/internal/ims/entitlement/softphone/VSimClient;)V

    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/VSimClient;->mDefaultState:Lcom/sec/internal/helper/State;

    .line 22
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/VSimClient;->LOG_TAG:Ljava/lang/String;

    .line 23
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/softphone/VSimClient;->initState()V

    return-void
.end method

.method private initState()V
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/VSimClient;->mDefaultState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->addState(Lcom/sec/internal/helper/State;)V

    return-void
.end method


# virtual methods
.method protected getHttpTransactionId()I
    .locals 0

    .line 56
    sget-object p0, Lcom/sec/internal/ims/entitlement/softphone/VSimClient;->sNextSerial:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p0

    return p0
.end method
