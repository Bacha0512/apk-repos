.class Lcom/weirdvoice/ui/favorites/FavAdapter$ConfigureObj;
.super Ljava/lang/Object;
.source "FavAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/weirdvoice/ui/favorites/FavAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConfigureObj"
.end annotation


# instance fields
.field groupName:Ljava/lang/String;

.field profileId:Ljava/lang/Long;

.field final synthetic this$0:Lcom/weirdvoice/ui/favorites/FavAdapter;


# direct methods
.method private constructor <init>(Lcom/weirdvoice/ui/favorites/FavAdapter;)V
    .locals 2

    .prologue
    .line 230
    iput-object p1, p0, Lcom/weirdvoice/ui/favorites/FavAdapter$ConfigureObj;->this$0:Lcom/weirdvoice/ui/favorites/FavAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 231
    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/weirdvoice/ui/favorites/FavAdapter$ConfigureObj;->profileId:Ljava/lang/Long;

    .line 232
    const-string v0, ""

    iput-object v0, p0, Lcom/weirdvoice/ui/favorites/FavAdapter$ConfigureObj;->groupName:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/weirdvoice/ui/favorites/FavAdapter;Lcom/weirdvoice/ui/favorites/FavAdapter$ConfigureObj;)V
    .locals 0

    .prologue
    .line 230
    invoke-direct {p0, p1}, Lcom/weirdvoice/ui/favorites/FavAdapter$ConfigureObj;-><init>(Lcom/weirdvoice/ui/favorites/FavAdapter;)V

    return-void
.end method
