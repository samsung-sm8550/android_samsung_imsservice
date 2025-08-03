.class public Lorg/xbill/DNS/DNAMERecord;
.super Lorg/xbill/DNS/SingleNameBase;
.source "DNAMERecord.java"


# static fields
.field private static final serialVersionUID:J = 0x2510790d5526c57aL


# direct methods
.method constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lorg/xbill/DNS/SingleNameBase;-><init>()V

    return-void
.end method


# virtual methods
.method getObject()Lorg/xbill/DNS/Record;
    .locals 0

    .line 19
    new-instance p0, Lorg/xbill/DNS/DNAMERecord;

    invoke-direct {p0}, Lorg/xbill/DNS/DNAMERecord;-><init>()V

    return-object p0
.end method
