.class public final synthetic Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase$$ExternalSyntheticLambda0;->f$0:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;

    iput p2, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase$$ExternalSyntheticLambda0;->f$0:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;

    iget p0, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase$$ExternalSyntheticLambda0;->f$1:I

    invoke-static {v0, p0}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->$r8$lambda$gXYSoGauqtQY3lQIEo3icmf6O_M(Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
