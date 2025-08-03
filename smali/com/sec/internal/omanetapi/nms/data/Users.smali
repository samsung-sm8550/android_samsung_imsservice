.class public Lcom/sec/internal/omanetapi/nms/data/Users;
.super Ljava/lang/Object;
.source "Users.java"


# instance fields
.field public mState:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "state"
    .end annotation
.end field

.field public mUser:[Lcom/sec/internal/omanetapi/nms/data/Users$User;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "user"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
