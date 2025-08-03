.class public Lorg/xbill/DNS/SIGRecord;
.super Lorg/xbill/DNS/SIGBase;
.source "SIGRecord.java"


# static fields
.field private static final serialVersionUID:J = 0x44e217f07be03542L


# direct methods
.method constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lorg/xbill/DNS/SIGBase;-><init>()V

    return-void
.end method


# virtual methods
.method getObject()Lorg/xbill/DNS/Record;
    .locals 0

    .line 26
    new-instance p0, Lorg/xbill/DNS/SIGRecord;

    invoke-direct {p0}, Lorg/xbill/DNS/SIGRecord;-><init>()V

    return-object p0
.end method
