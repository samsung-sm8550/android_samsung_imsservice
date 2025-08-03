.class public final synthetic Lcom/sec/internal/log/CmcPingTestLogger$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/util/List;

.field public final synthetic f$1:Lcom/sec/internal/log/CmcPingTestLogger$OnFinishListener;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Lcom/sec/internal/log/CmcPingTestLogger$OnFinishListener;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/log/CmcPingTestLogger$$ExternalSyntheticLambda0;->f$0:Ljava/util/List;

    iput-object p2, p0, Lcom/sec/internal/log/CmcPingTestLogger$$ExternalSyntheticLambda0;->f$1:Lcom/sec/internal/log/CmcPingTestLogger$OnFinishListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/sec/internal/log/CmcPingTestLogger$$ExternalSyntheticLambda0;->f$0:Ljava/util/List;

    iget-object p0, p0, Lcom/sec/internal/log/CmcPingTestLogger$$ExternalSyntheticLambda0;->f$1:Lcom/sec/internal/log/CmcPingTestLogger$OnFinishListener;

    invoke-static {v0, p0}, Lcom/sec/internal/log/CmcPingTestLogger;->$r8$lambda$VCOyoNNNOly106g8qk_eEEDj6YE(Ljava/util/List;Lcom/sec/internal/log/CmcPingTestLogger$OnFinishListener;)V

    return-void
.end method
