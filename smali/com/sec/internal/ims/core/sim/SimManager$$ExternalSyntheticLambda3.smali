.class public final synthetic Lcom/sec/internal/ims/core/sim/SimManager$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/log/LogRedactor;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/log/LogRedactor;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/core/sim/SimManager$$ExternalSyntheticLambda3;->f$0:Lcom/sec/internal/log/LogRedactor;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/SimManager$$ExternalSyntheticLambda3;->f$0:Lcom/sec/internal/log/LogRedactor;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/sec/internal/log/LogRedactor;->redact(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
