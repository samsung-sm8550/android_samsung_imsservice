.class public final synthetic Lcom/google/firebase/heartbeatinfo/DefaultHeartBeatController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/firebase/components/ComponentFactory;


# instance fields
.field public final synthetic f$0:Lcom/google/firebase/components/Qualified;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/components/Qualified;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/heartbeatinfo/DefaultHeartBeatController$$ExternalSyntheticLambda0;->f$0:Lcom/google/firebase/components/Qualified;

    return-void
.end method


# virtual methods
.method public final create(Lcom/google/firebase/components/ComponentContainer;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/google/firebase/heartbeatinfo/DefaultHeartBeatController$$ExternalSyntheticLambda0;->f$0:Lcom/google/firebase/components/Qualified;

    invoke-static {p0, p1}, Lcom/google/firebase/heartbeatinfo/DefaultHeartBeatController;->$r8$lambda$qqd15T_K2a1gIcWWKlBsXOoLnRU(Lcom/google/firebase/components/Qualified;Lcom/google/firebase/components/ComponentContainer;)Lcom/google/firebase/heartbeatinfo/DefaultHeartBeatController;

    move-result-object p0

    return-object p0
.end method
