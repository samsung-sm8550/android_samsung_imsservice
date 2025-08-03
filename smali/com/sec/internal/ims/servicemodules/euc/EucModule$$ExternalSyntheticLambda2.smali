.class public final synthetic Lcom/sec/internal/ims/servicemodules/euc/EucModule$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/ims/servicemodules/euc/EucModule;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;

.field public final synthetic f$3:Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData$Response;

.field public final synthetic f$4:Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForward$IResponseCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/ims/servicemodules/euc/EucModule;Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData$Response;Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForward$IResponseCallback;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule$$ExternalSyntheticLambda2;->f$0:Lcom/sec/internal/ims/servicemodules/euc/EucModule;

    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule$$ExternalSyntheticLambda2;->f$2:Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;

    iput-object p4, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule$$ExternalSyntheticLambda2;->f$3:Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData$Response;

    iput-object p5, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule$$ExternalSyntheticLambda2;->f$4:Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForward$IResponseCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule$$ExternalSyntheticLambda2;->f$0:Lcom/sec/internal/ims/servicemodules/euc/EucModule;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule$$ExternalSyntheticLambda2;->f$2:Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule$$ExternalSyntheticLambda2;->f$3:Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData$Response;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule$$ExternalSyntheticLambda2;->f$4:Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForward$IResponseCallback;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/sec/internal/ims/servicemodules/euc/EucModule;->$r8$lambda$ZUkqWGkYRRdGCshkukQp7ExEhQw(Lcom/sec/internal/ims/servicemodules/euc/EucModule;Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData$Response;Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForward$IResponseCallback;)V

    return-void
.end method
