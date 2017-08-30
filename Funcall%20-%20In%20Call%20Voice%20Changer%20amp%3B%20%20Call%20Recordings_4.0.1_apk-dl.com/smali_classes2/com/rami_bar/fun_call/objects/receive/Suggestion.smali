.class public Lcom/rami_bar/fun_call/objects/receive/Suggestion;
.super Ljava/lang/Object;
.source "Suggestion.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0xaL


# instance fields
.field public action:Ljava/lang/String;

.field public action_data:Ljava/lang/String;

.field public isActive:Ljava/lang/Boolean;

.field public text:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/rami_bar/fun_call/objects/receive/Suggestion;->isActive:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 15
    instance-of v0, p1, Lcom/rami_bar/fun_call/objects/receive/Suggestion;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/rami_bar/fun_call/objects/receive/Suggestion;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v0, p1, Lcom/rami_bar/fun_call/objects/receive/Suggestion;->action:Ljava/lang/String;

    iget-object v1, p0, Lcom/rami_bar/fun_call/objects/receive/Suggestion;->action:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
