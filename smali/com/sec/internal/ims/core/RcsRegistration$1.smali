.class Lcom/sec/internal/ims/core/RcsRegistration$1;
.super Ljava/util/HashMap;
.source "RcsRegistration.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/core/RcsRegistration;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/core/RcsRegistration;)V
    .locals 1

    .line 10
    iput-object p1, p0, Lcom/sec/internal/ims/core/RcsRegistration$1;->this$0:Lcom/sec/internal/ims/core/RcsRegistration;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 11
    const-string p1, "UserPwd"

    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
