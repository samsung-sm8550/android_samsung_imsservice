.class public final synthetic Lcom/sec/internal/ims/settings/ImsProfileCache$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/ims/settings/ImsProfileCache;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/ims/settings/ImsProfileCache;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/settings/ImsProfileCache$$ExternalSyntheticLambda0;->f$0:Lcom/sec/internal/ims/settings/ImsProfileCache;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/settings/ImsProfileCache$$ExternalSyntheticLambda0;->f$0:Lcom/sec/internal/ims/settings/ImsProfileCache;

    check-cast p1, Lcom/sec/ims/settings/ImsProfile;

    invoke-static {p0, p1}, Lcom/sec/internal/ims/settings/ImsProfileCache;->$r8$lambda$ei7SBL7EJrxSDPitbtw0g3t3sYg(Lcom/sec/internal/ims/settings/ImsProfileCache;Lcom/sec/ims/settings/ImsProfile;)V

    return-void
.end method
