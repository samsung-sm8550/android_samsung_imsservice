.class public final synthetic Lcom/sec/internal/ims/updater/UpdateDownloader$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/sec/internal/ims/updater/stub/StubHttpRequester$HttpResponseListener;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/ims/updater/UpdateDownloader;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/ims/updater/UpdateDownloader;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/updater/UpdateDownloader$$ExternalSyntheticLambda0;->f$0:Lcom/sec/internal/ims/updater/UpdateDownloader;

    return-void
.end method


# virtual methods
.method public final onResponse(Lcom/sec/internal/ims/updater/stub/data/StubResponseData;)V
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/updater/UpdateDownloader$$ExternalSyntheticLambda0;->f$0:Lcom/sec/internal/ims/updater/UpdateDownloader;

    invoke-static {p0, p1}, Lcom/sec/internal/ims/updater/UpdateDownloader;->$r8$lambda$UsFwwUEgRa_nORB8xGHp6t979x0(Lcom/sec/internal/ims/updater/UpdateDownloader;Lcom/sec/internal/ims/updater/stub/data/StubResponseData;)V

    return-void
.end method
