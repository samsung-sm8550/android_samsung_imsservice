.class public Lcom/verizon/loginclient/TokenLoginClient$TokenQueryResult;
.super Ljava/lang/Object;
.source "TokenLoginClient.java"


# instance fields
.field private final mException:Ljava/lang/Throwable;

.field private final mResultCode:Lcom/verizon/loginclient/TokenLoginClient$ResultCode;

.field private final mTokenData:Lcom/verizon/loginclient/TokenLoginClient$TokenQueryData;


# direct methods
.method private constructor <init>(Lcom/verizon/loginclient/TokenLoginClient$ResultCode;Lcom/verizon/loginclient/TokenLoginClient$TokenQueryData;Ljava/lang/Throwable;)V
    .locals 0

    .line 816
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 817
    iput-object p1, p0, Lcom/verizon/loginclient/TokenLoginClient$TokenQueryResult;->mResultCode:Lcom/verizon/loginclient/TokenLoginClient$ResultCode;

    .line 818
    iput-object p2, p0, Lcom/verizon/loginclient/TokenLoginClient$TokenQueryResult;->mTokenData:Lcom/verizon/loginclient/TokenLoginClient$TokenQueryData;

    .line 819
    iput-object p3, p0, Lcom/verizon/loginclient/TokenLoginClient$TokenQueryResult;->mException:Ljava/lang/Throwable;

    return-void
.end method

.method synthetic constructor <init>(Lcom/verizon/loginclient/TokenLoginClient$ResultCode;Lcom/verizon/loginclient/TokenLoginClient$TokenQueryData;Ljava/lang/Throwable;Lcom/verizon/loginclient/TokenLoginClient$1;)V
    .locals 0

    .line 810
    invoke-direct {p0, p1, p2, p3}, Lcom/verizon/loginclient/TokenLoginClient$TokenQueryResult;-><init>(Lcom/verizon/loginclient/TokenLoginClient$ResultCode;Lcom/verizon/loginclient/TokenLoginClient$TokenQueryData;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public getException()Ljava/lang/Throwable;
    .locals 0

    .line 839
    iget-object p0, p0, Lcom/verizon/loginclient/TokenLoginClient$TokenQueryResult;->mException:Ljava/lang/Throwable;

    return-object p0
.end method

.method public getResultCode()Lcom/verizon/loginclient/TokenLoginClient$ResultCode;
    .locals 0

    .line 826
    iget-object p0, p0, Lcom/verizon/loginclient/TokenLoginClient$TokenQueryResult;->mResultCode:Lcom/verizon/loginclient/TokenLoginClient$ResultCode;

    return-object p0
.end method

.method public getTokenData()Lcom/verizon/loginclient/TokenLoginClient$TokenQueryData;
    .locals 0

    .line 833
    iget-object p0, p0, Lcom/verizon/loginclient/TokenLoginClient$TokenQueryResult;->mTokenData:Lcom/verizon/loginclient/TokenLoginClient$TokenQueryData;

    return-object p0
.end method
