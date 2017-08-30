.class Lcom/rami_bar/fun_call/adapters/ContactFriendAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "ContactFriendAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rami_bar/fun_call/adapters/ContactFriendAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field cb_selected:Landroid/widget/CheckBox;

.field iv_contact_icon:Lcom/rami_bar/fun_call/utiles/CircularImageView;

.field final synthetic this$0:Lcom/rami_bar/fun_call/adapters/ContactFriendAdapter;

.field tv_contact_name:Landroid/widget/TextView;

.field tv_contact_phone:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Lcom/rami_bar/fun_call/adapters/ContactFriendAdapter;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/rami_bar/fun_call/adapters/ContactFriendAdapter$ViewHolder;->this$0:Lcom/rami_bar/fun_call/adapters/ContactFriendAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/rami_bar/fun_call/adapters/ContactFriendAdapter;Lcom/rami_bar/fun_call/adapters/ContactFriendAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/rami_bar/fun_call/adapters/ContactFriendAdapter;
    .param p2, "x1"    # Lcom/rami_bar/fun_call/adapters/ContactFriendAdapter$1;

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/rami_bar/fun_call/adapters/ContactFriendAdapter$ViewHolder;-><init>(Lcom/rami_bar/fun_call/adapters/ContactFriendAdapter;)V

    return-void
.end method
