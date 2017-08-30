.class Lcom/weirdvoice/ui/EditFavs$KOListener;
.super Ljava/lang/Object;
.source "EditFavs.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/weirdvoice/ui/EditFavs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KOListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/weirdvoice/ui/EditFavs;


# direct methods
.method private constructor <init>(Lcom/weirdvoice/ui/EditFavs;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/weirdvoice/ui/EditFavs$KOListener;->this$0:Lcom/weirdvoice/ui/EditFavs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/weirdvoice/ui/EditFavs;Lcom/weirdvoice/ui/EditFavs$KOListener;)V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/weirdvoice/ui/EditFavs$KOListener;-><init>(Lcom/weirdvoice/ui/EditFavs;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/weirdvoice/ui/EditFavs$KOListener;->this$0:Lcom/weirdvoice/ui/EditFavs;

    invoke-virtual {v0}, Lcom/weirdvoice/ui/EditFavs;->dismiss()V

    .line 77
    return-void
.end method
