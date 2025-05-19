.class Lcom/coui/appcompat/preference/COUISwitchPreference$Listener;
.super Ljava/lang/Object;
.source "COUISwitchPreference.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/preference/COUISwitchPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Listener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/preference/COUISwitchPreference;


# direct methods
.method private constructor <init>(Lcom/coui/appcompat/preference/COUISwitchPreference;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/coui/appcompat/preference/COUISwitchPreference$Listener;->this$0:Lcom/coui/appcompat/preference/COUISwitchPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/coui/appcompat/preference/COUISwitchPreference;Lcom/coui/appcompat/preference/COUISwitchPreference$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/coui/appcompat/preference/COUISwitchPreference;
    .param p2, "x1"    # Lcom/coui/appcompat/preference/COUISwitchPreference$1;

    .line 66
    invoke-direct {p0, p1}, Lcom/coui/appcompat/preference/COUISwitchPreference$Listener;-><init>(Lcom/coui/appcompat/preference/COUISwitchPreference;)V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .line 70
    iget-object v0, p0, Lcom/coui/appcompat/preference/COUISwitchPreference$Listener;->this$0:Lcom/coui/appcompat/preference/COUISwitchPreference;

    invoke-virtual {v0}, Lcom/coui/appcompat/preference/COUISwitchPreference;->isChecked()Z

    move-result v0

    if-ne v0, p2, :cond_0

    .line 71
    return-void

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/preference/COUISwitchPreference$Listener;->this$0:Lcom/coui/appcompat/preference/COUISwitchPreference;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coui/appcompat/preference/COUISwitchPreference;->access$100(Lcom/coui/appcompat/preference/COUISwitchPreference;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 76
    xor-int/lit8 v0, p2, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 77
    return-void

    .line 80
    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/preference/COUISwitchPreference$Listener;->this$0:Lcom/coui/appcompat/preference/COUISwitchPreference;

    invoke-virtual {v0, p2}, Lcom/coui/appcompat/preference/COUISwitchPreference;->setChecked(Z)V

    .line 81
    return-void
.end method
