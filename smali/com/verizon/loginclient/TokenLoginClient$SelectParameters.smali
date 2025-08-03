.class Lcom/verizon/loginclient/TokenLoginClient$SelectParameters;
.super Ljava/lang/Object;
.source "TokenLoginClient.java"


# instance fields
.field private final mSelectParams:[Ljava/lang/String;

.field private final mSelectString:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 856
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 857
    iput-object p1, p0, Lcom/verizon/loginclient/TokenLoginClient$SelectParameters;->mSelectString:Ljava/lang/String;

    .line 858
    iput-object p2, p0, Lcom/verizon/loginclient/TokenLoginClient$SelectParameters;->mSelectParams:[Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;[Ljava/lang/String;Lcom/verizon/loginclient/TokenLoginClient$1;)V
    .locals 0

    .line 851
    invoke-direct {p0, p1, p2}, Lcom/verizon/loginclient/TokenLoginClient$SelectParameters;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getSelectParams()[Ljava/lang/String;
    .locals 0

    .line 863
    iget-object p0, p0, Lcom/verizon/loginclient/TokenLoginClient$SelectParameters;->mSelectParams:[Ljava/lang/String;

    return-object p0
.end method

.method public getSelectString()Ljava/lang/String;
    .locals 0

    .line 861
    iget-object p0, p0, Lcom/verizon/loginclient/TokenLoginClient$SelectParameters;->mSelectString:Ljava/lang/String;

    return-object p0
.end method
