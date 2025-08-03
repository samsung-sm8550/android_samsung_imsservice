.class public Lcom/sec/internal/constants/ims/servicemodules/Registration;
.super Ljava/lang/Object;
.source "Registration.java"


# instance fields
.field private mImsRegistration:Lcom/sec/ims/ImsRegistration;

.field private mIsReRegi:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Lcom/sec/ims/ImsRegistration;Z)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/Registration;->mImsRegistration:Lcom/sec/ims/ImsRegistration;

    .line 11
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/Registration;->mIsReRegi:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public getImsRegi()Lcom/sec/ims/ImsRegistration;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/Registration;->mImsRegistration:Lcom/sec/ims/ImsRegistration;

    return-object p0
.end method

.method public isReRegi()Z
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/Registration;->mIsReRegi:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method
