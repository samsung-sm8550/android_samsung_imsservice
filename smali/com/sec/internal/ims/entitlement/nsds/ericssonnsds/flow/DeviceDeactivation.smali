.class public Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/DeviceDeactivation;
.super Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/OperationUsingManageConnectivity;
.source "DeviceDeactivation.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "DeviceDeactivation"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;Landroid/os/Messenger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 15
    invoke-direct/range {p0 .. p7}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/OperationUsingManageConnectivity;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;Landroid/os/Messenger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    sget-object p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/DeviceDeactivation;->LOG_TAG:Ljava/lang/String;

    const-string p1, "created."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public deactivateDevice()V
    .locals 1

    const/4 v0, 0x2

    .line 20
    iput v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/OperationUsingManageConnectivity;->mOperation:I

    .line 21
    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/OperationUsingManageConnectivity;->executeOperationWithChallenge()V

    return-void
.end method
