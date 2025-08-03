.class public Ljavax/mail/internet/HeaderTokenizer$Token;
.super Ljava/lang/Object;
.source "HeaderTokenizer.java"


# instance fields
.field private type:I

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput p1, p0, Ljavax/mail/internet/HeaderTokenizer$Token;->type:I

    .line 98
    iput-object p2, p0, Ljavax/mail/internet/HeaderTokenizer$Token;->value:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getType()I
    .locals 0

    .line 118
    iget p0, p0, Ljavax/mail/internet/HeaderTokenizer$Token;->type:I

    return p0
.end method

.method public getValue()Ljava/lang/String;
    .locals 0

    .line 130
    iget-object p0, p0, Ljavax/mail/internet/HeaderTokenizer$Token;->value:Ljava/lang/String;

    return-object p0
.end method
