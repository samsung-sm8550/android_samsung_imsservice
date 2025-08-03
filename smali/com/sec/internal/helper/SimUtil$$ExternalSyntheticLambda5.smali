.class public final synthetic Lcom/sec/internal/helper/SimUtil$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/helper/SimUtil$$ExternalSyntheticLambda5;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/helper/SimUtil$$ExternalSyntheticLambda5;->f$0:Ljava/lang/String;

    check-cast p1, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    invoke-static {p0, p1}, Lcom/sec/internal/helper/SimUtil;->$r8$lambda$CM2AdPN6QoaQPs1TUdHldkKr2uc(Ljava/lang/String;Lcom/sec/internal/interfaces/ims/core/ISimManager;)Lcom/sec/internal/constants/Mno;

    move-result-object p0

    return-object p0
.end method
