.class public Lcom/verizon/loginclient/TokenLoginClient$TokenQueryData;
.super Ljava/lang/Object;
.source "TokenLoginClient.java"


# instance fields
.field public final subscriptionId:I

.field public final token:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 788
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 789
    iput p2, p0, Lcom/verizon/loginclient/TokenLoginClient$TokenQueryData;->subscriptionId:I

    .line 790
    iput-object p1, p0, Lcom/verizon/loginclient/TokenLoginClient$TokenQueryData;->token:Ljava/lang/String;

    return-void
.end method
