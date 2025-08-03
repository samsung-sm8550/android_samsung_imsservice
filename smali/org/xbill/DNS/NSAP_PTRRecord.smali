.class public Lorg/xbill/DNS/NSAP_PTRRecord;
.super Lorg/xbill/DNS/SingleNameBase;
.source "NSAP_PTRRecord.java"


# static fields
.field private static final serialVersionUID:J = 0x211dc95571093d08L


# direct methods
.method constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lorg/xbill/DNS/SingleNameBase;-><init>()V

    return-void
.end method


# virtual methods
.method getObject()Lorg/xbill/DNS/Record;
    .locals 0

    .line 20
    new-instance p0, Lorg/xbill/DNS/NSAP_PTRRecord;

    invoke-direct {p0}, Lorg/xbill/DNS/NSAP_PTRRecord;-><init>()V

    return-object p0
.end method
