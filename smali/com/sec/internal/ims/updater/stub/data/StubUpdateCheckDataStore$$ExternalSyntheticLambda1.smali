.class public final synthetic Lcom/sec/internal/ims/updater/stub/data/StubUpdateCheckDataStore$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/ims/updater/stub/data/StubUpdateCheckDataStore;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/ims/updater/stub/data/StubUpdateCheckDataStore;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/updater/stub/data/StubUpdateCheckDataStore$$ExternalSyntheticLambda1;->f$0:Lcom/sec/internal/ims/updater/stub/data/StubUpdateCheckDataStore;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/updater/stub/data/StubUpdateCheckDataStore$$ExternalSyntheticLambda1;->f$0:Lcom/sec/internal/ims/updater/stub/data/StubUpdateCheckDataStore;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/updater/stub/data/StubDataStore;->remove(Ljava/lang/String;)V

    return-void
.end method
