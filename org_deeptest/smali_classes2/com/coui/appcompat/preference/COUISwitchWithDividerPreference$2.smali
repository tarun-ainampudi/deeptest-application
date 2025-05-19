.class Lcom/coui/appcompat/preference/COUISwitchWithDividerPreference$2;
.super Ljava/lang/Object;
.source "COUISwitchWithDividerPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/preference/COUISwitchWithDividerPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/preference/COUISwitchWithDividerPreference;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/preference/COUISwitchWithDividerPreference;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coui/appcompat/preference/COUISwitchWithDividerPreference;

    .line 105
    iput-object p1, p0, Lcom/coui/appcompat/preference/COUISwitchWithDividerPreference$2;->this$0:Lcom/coui/appcompat/preference/COUISwitchWithDividerPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 108
    iget-object v0, p0, Lcom/coui/appcompat/preference/COUISwitchWithDividerPreference$2;->this$0:Lcom/coui/appcompat/preference/COUISwitchWithDividerPreference;

    invoke-static {v0}, Lcom/coui/appcompat/preference/COUISwitchWithDividerPreference;->access$101(Lcom/coui/appcompat/preference/COUISwitchWithDividerPreference;)V

    .line 109
    return-void
.end method
