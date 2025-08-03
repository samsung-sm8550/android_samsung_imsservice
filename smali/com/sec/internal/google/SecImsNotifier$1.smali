.class Lcom/sec/internal/google/SecImsNotifier$1;
.super Ljava/lang/Object;
.source "SecImsNotifier.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/sec/internal/google/SecImsNotifier;

.field final synthetic val$mmTelFeatureImpl:Lcom/sec/internal/imsphone/MmTelFeatureImpl;


# direct methods
.method constructor <init>(Lcom/sec/internal/google/SecImsNotifier;Lcom/sec/internal/imsphone/MmTelFeatureImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 448
    iput-object p1, p0, Lcom/sec/internal/google/SecImsNotifier$1;->this$0:Lcom/sec/internal/google/SecImsNotifier;

    iput-object p2, p0, Lcom/sec/internal/google/SecImsNotifier$1;->val$mmTelFeatureImpl:Lcom/sec/internal/imsphone/MmTelFeatureImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 452
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/google/SecImsNotifier$1;->val$mmTelFeatureImpl:Lcom/sec/internal/imsphone/MmTelFeatureImpl;

    invoke-virtual {p0}, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->getCmcImsServiceUtil()Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->createP2pCallSession()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
