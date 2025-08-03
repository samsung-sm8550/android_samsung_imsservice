.class public final synthetic Lcom/sec/internal/ims/config/ConfigTrigger$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Ljava/lang/Integer;

    invoke-static {p1}, Lcom/sec/internal/ims/config/ConfigTrigger;->$r8$lambda$01M-3eaO9YYYO3Ie70ClS3xnE2I(Ljava/lang/Integer;)Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;

    move-result-object p0

    return-object p0
.end method
