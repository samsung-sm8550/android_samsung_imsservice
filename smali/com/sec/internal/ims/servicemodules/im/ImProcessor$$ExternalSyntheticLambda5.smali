.class public final synthetic Lcom/sec/internal/ims/servicemodules/im/ImProcessor$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/ims/servicemodules/im/ImProcessor;

.field public final synthetic f$1:Ljava/util/Map;

.field public final synthetic f$2:Z

.field public final synthetic f$3:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/ims/servicemodules/im/ImProcessor;Ljava/util/Map;ZLjava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor$$ExternalSyntheticLambda5;->f$0:Lcom/sec/internal/ims/servicemodules/im/ImProcessor;

    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor$$ExternalSyntheticLambda5;->f$1:Ljava/util/Map;

    iput-boolean p3, p0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor$$ExternalSyntheticLambda5;->f$2:Z

    iput-object p4, p0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor$$ExternalSyntheticLambda5;->f$3:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor$$ExternalSyntheticLambda5;->f$0:Lcom/sec/internal/ims/servicemodules/im/ImProcessor;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor$$ExternalSyntheticLambda5;->f$1:Ljava/util/Map;

    iget-boolean v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor$$ExternalSyntheticLambda5;->f$2:Z

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor$$ExternalSyntheticLambda5;->f$3:Ljava/lang/String;

    invoke-static {v0, v1, v2, p0}, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->$r8$lambda$p43y5pAo3LAC-2YsfcZLIE9Qf8o(Lcom/sec/internal/ims/servicemodules/im/ImProcessor;Ljava/util/Map;ZLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
