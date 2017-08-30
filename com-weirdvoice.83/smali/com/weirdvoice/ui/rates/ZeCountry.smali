.class public Lcom/weirdvoice/ui/rates/ZeCountry;
.super Ljava/lang/Object;
.source "ZeCountry.java"


# instance fields
.field private flag:Ljava/lang/String;

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "flag"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/weirdvoice/ui/rates/ZeCountry;->name:Ljava/lang/String;

    .line 28
    iput-object p2, p0, Lcom/weirdvoice/ui/rates/ZeCountry;->flag:Ljava/lang/String;

    .line 29
    return-void
.end method


# virtual methods
.method public getFlag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/weirdvoice/ui/rates/ZeCountry;->flag:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Lcom/weirdvoice/ui/rates/ZeCountry;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setFlag(Ljava/lang/String;)V
    .locals 0
    .param p1, "flag"    # Ljava/lang/String;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/weirdvoice/ui/rates/ZeCountry;->flag:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 14
    iput-object p1, p0, Lcom/weirdvoice/ui/rates/ZeCountry;->name:Ljava/lang/String;

    .line 15
    return-void
.end method
