.class Lcom/weirdvoice/ui/favorites/FavAdapter$MenuCallback;
.super Ljava/lang/Object;
.source "FavAdapter.java"

# interfaces
.implements Lcom/actionbarsherlock/internal/view/menu/MenuBuilder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/weirdvoice/ui/favorites/FavAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MenuCallback"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private domain:Ljava/lang/String;

.field private groupName:Ljava/lang/String;

.field private profileId:Ljava/lang/Long;

.field private publishEnabled:Z

.field final synthetic this$0:Lcom/weirdvoice/ui/favorites/FavAdapter;


# direct methods
.method public constructor <init>(Lcom/weirdvoice/ui/favorites/FavAdapter;Landroid/content/Context;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .param p2, "ctxt"    # Landroid/content/Context;
    .param p3, "aProfileId"    # Ljava/lang/Long;
    .param p4, "aGroupName"    # Ljava/lang/String;
    .param p5, "aDomain"    # Ljava/lang/String;
    .param p6, "aPublishedEnabled"    # Z

    .prologue
    .line 249
    iput-object p1, p0, Lcom/weirdvoice/ui/favorites/FavAdapter$MenuCallback;->this$0:Lcom/weirdvoice/ui/favorites/FavAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 243
    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/weirdvoice/ui/favorites/FavAdapter$MenuCallback;->profileId:Ljava/lang/Long;

    .line 250
    iput-object p3, p0, Lcom/weirdvoice/ui/favorites/FavAdapter$MenuCallback;->profileId:Ljava/lang/Long;

    .line 251
    iput-object p2, p0, Lcom/weirdvoice/ui/favorites/FavAdapter$MenuCallback;->context:Landroid/content/Context;

    .line 252
    iput-object p4, p0, Lcom/weirdvoice/ui/favorites/FavAdapter$MenuCallback;->groupName:Ljava/lang/String;

    .line 253
    iput-object p5, p0, Lcom/weirdvoice/ui/favorites/FavAdapter$MenuCallback;->domain:Ljava/lang/String;

    .line 254
    iput-boolean p6, p0, Lcom/weirdvoice/ui/favorites/FavAdapter$MenuCallback;->publishEnabled:Z

    .line 255
    return-void
.end method


# virtual methods
.method public onMenuItemSelected(Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 3
    .param p1, "menu"    # Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;
    .param p2, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    const/4 v1, 0x1

    .line 264
    invoke-interface {p2}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    .line 265
    .local v0, "itemId":I
    const v2, 0x7f0b0160

    if-ne v0, v2, :cond_1

    .line 277
    :cond_0
    :goto_0
    return v1

    .line 268
    :cond_1
    const v2, 0x7f0b0162

    if-eq v0, v2, :cond_0

    .line 273
    const v2, 0x7f0b0161

    if-eq v0, v2, :cond_0

    .line 277
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onMenuModeChange(Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;)V
    .locals 0
    .param p1, "menu"    # Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    .prologue
    .line 260
    return-void
.end method
