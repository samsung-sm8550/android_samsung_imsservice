.class public final synthetic Lcom/sec/internal/ims/updater/stub/data/StubDataStore$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/ims/updater/stub/data/StubDataStore;

.field public final synthetic f$1:J

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/ims/updater/stub/data/StubDataStore;JLjava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/updater/stub/data/StubDataStore$$ExternalSyntheticLambda1;->f$0:Lcom/sec/internal/ims/updater/stub/data/StubDataStore;

    iput-wide p2, p0, Lcom/sec/internal/ims/updater/stub/data/StubDataStore$$ExternalSyntheticLambda1;->f$1:J

    iput-object p4, p0, Lcom/sec/internal/ims/updater/stub/data/StubDataStore$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/sec/internal/ims/updater/stub/data/StubDataStore$$ExternalSyntheticLambda1;->f$0:Lcom/sec/internal/ims/updater/stub/data/StubDataStore;

    iget-wide v1, p0, Lcom/sec/internal/ims/updater/stub/data/StubDataStore$$ExternalSyntheticLambda1;->f$1:J

    iget-object p0, p0, Lcom/sec/internal/ims/updater/stub/data/StubDataStore$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/sec/internal/ims/updater/stub/data/StubDataStore;->$r8$lambda$cSPRJqf-5t-bCIytZ3cFqvICf9M(Lcom/sec/internal/ims/updater/stub/data/StubDataStore;JLjava/lang/String;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method
