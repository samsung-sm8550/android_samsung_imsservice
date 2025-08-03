.class public final synthetic Lcom/sec/internal/helper/SimpleEventLog$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/helper/SimpleEventLog;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/helper/SimpleEventLog;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/helper/SimpleEventLog$$ExternalSyntheticLambda1;->f$0:Lcom/sec/internal/helper/SimpleEventLog;

    iput-object p2, p0, Lcom/sec/internal/helper/SimpleEventLog$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/sec/internal/helper/SimpleEventLog$$ExternalSyntheticLambda1;->f$0:Lcom/sec/internal/helper/SimpleEventLog;

    iget-object p0, p0, Lcom/sec/internal/helper/SimpleEventLog$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/sec/internal/helper/SimpleEventLog;->$r8$lambda$ak7UudsobZo1o8tecDZn_fBhTEk(Lcom/sec/internal/helper/SimpleEventLog;Ljava/lang/String;)V

    return-void
.end method
