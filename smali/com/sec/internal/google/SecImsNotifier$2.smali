.class Lcom/sec/internal/google/SecImsNotifier$2;
.super Ljava/lang/Object;
.source "SecImsNotifier.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/sec/internal/google/SecImsNotifier;

.field final synthetic val$de:Lcom/sec/ims/DialogEvent;

.field final synthetic val$mmTelFeatureImpl:Lcom/sec/internal/imsphone/MmTelFeatureImpl;


# direct methods
.method constructor <init>(Lcom/sec/internal/google/SecImsNotifier;Lcom/sec/internal/imsphone/MmTelFeatureImpl;Lcom/sec/ims/DialogEvent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 467
    iput-object p1, p0, Lcom/sec/internal/google/SecImsNotifier$2;->this$0:Lcom/sec/internal/google/SecImsNotifier;

    iput-object p2, p0, Lcom/sec/internal/google/SecImsNotifier$2;->val$mmTelFeatureImpl:Lcom/sec/internal/imsphone/MmTelFeatureImpl;

    iput-object p3, p0, Lcom/sec/internal/google/SecImsNotifier$2;->val$de:Lcom/sec/ims/DialogEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 471
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/google/SecImsNotifier$2;->val$mmTelFeatureImpl:Lcom/sec/internal/imsphone/MmTelFeatureImpl;

    iget-object p0, p0, Lcom/sec/internal/google/SecImsNotifier$2;->val$de:Lcom/sec/ims/DialogEvent;

    invoke-virtual {v0, p0}, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->preparePushCall(Lcom/sec/ims/DialogEvent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
